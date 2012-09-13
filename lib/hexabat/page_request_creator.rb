require 'em-http-request'
require 'yajl'

module Hexabat
  class PageRequestCreator
    MAX_PAGE_SIZE = 100

    def initialize(repository, &callback)
      @repository = repository
      @callback = callback
    end

    def for(params)
      build_request(params).tap do |request|
        request.callback &page_retrieved
        request.errback  &error_occurred
      end
    end

    def page_retrieved
      ->(http) do
        parse_issues_from http.response do |issues|
          notify_issue_retrieved issues
        end
      end
    end

    def error_occurred
      ->(http) do
        STDERR.puts "HEXABAT: Error retreiving page #{@query[:page]}"
        STDERR.puts "HEXABAT: Status was #{http.response_header.status}"
        STDERR.puts "HEXABAT: Body was:\n===\n#{http.response}\n==="
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

    def parse_issues_from(json)
      yield Yajl::Parser.parse(json)
    end

    def notify_issue_retrieved(issues)
      issues.each do |issue|
        EM.next_tick { @callback.call issue }
      end
    end

  end
end
