require 'em-http-request'
require 'em-http/middleware/json_response'



require_relative 'page_range'

module Hexabat
  class ImportError < Exception; end

  class RequestCreator
    MAX_PAGE_SIZE = 100

    def initialize(repository, &issue_retrieved)
      @repository = repository
      @callback = issue_retrieved
      EM::HttpRequest.use(EM::Middleware::JSONResponse)
    end

    def for(params, &callback)
      build_request(params).tap do |request|
        request.callback &page_retrieved(callback)
      end
    end

    def page_retrieved(page_callback = nil)
      ->(http) do
        check_for_errors(http)
        process_response(http.response_header, http.response, page_callback)
      end
    end

    private

    def build_request(params)
      EM::HttpRequest.new(endpoint).get query: query_from(params)
    end

    def endpoint
      "https://api.github.com/repos/#{@repository}/issues"
    end

    def query_from(params)
      params.merge per_page: MAX_PAGE_SIZE
    end

    def check_for_errors(http)
      if http.response_header.status > 200
        raise ImportError, "#{@repository} #{http.response['message']}"
      end
    end

    def process_response(headers, issues, page_callback)
      page_callback.call(PageRange.from(headers), issues.count) unless page_callback.nil?
      notify_issue_retrieved issues
    end

    def notify_issue_retrieved(issues)
      issues.each do |issue|
        EM.next_tick { @callback.call issue }
      end
    end
  end

  class TokenAuthorizedRequestCreator < RequestCreator
    def initialize(repository, token, &issue_retrieved)
     @token = token
     super(repository, &issue_retrieved)
    end

    private

    def build_request(params)
      EM::HttpRequest.new(endpoint).get query: query_from(params), head: headers
    end

    def headers
      { 'Authorization' => "token #{@token}" }
    end
  end
end
