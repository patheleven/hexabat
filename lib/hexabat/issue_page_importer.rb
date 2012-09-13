require 'em-http-request'
require 'yajl'

module Hexabat
  class IssueProcessor
    def self.process(json, &issue_retrieved)
      parse_issues_from json do |issues|
        issues.each { |issue| issue_retrieved.call issue }
      end
    end

    private

    def self.parse_issues_from(json)
      yield Yajl::Parser.parse(json)
    end
  end

  class PageRequest
    MAX_PAGE_SIZE = 100

    def self.for(repository, params)
      EM::HttpRequest.new(endpoint_for(repository)).
        get(query: query_for(params))
    end

    private

    def self.endpoint_for(repository)
      "https://api.github.com/repos/#{repository}/issues"
    end

    def self.query_for(params)
      params.merge( per_page: MAX_PAGE_SIZE)
    end
  end


  class IssuePageImporter
    MAX_PAGE_SIZE = 100

    def self.import params
      new(params).import
    end

    def initialize(params)
      @repository        = params.delete :repository
      @issue_retrieved   = params.delete(:issue_retrieved)
      @issue_count_known = params.delete(:issue_count_known)
      @query             = params
    end

    def import
      http = PageRequest.for(@repository, @query)
      http.callback &page_retrieved
      http.errback  &error_occurred
    end

    def page_retrieved
      ->(http) do
        IssueProcessor.process http.response, &@issue_retrieved
        EM.stop
      end
    end

    def error_occurred
      ->(http) do
        STDERR.puts "HEXABAT: There was an error retreiving page #{@query[:page]}"
        STDERR.puts "HEXABAT: Response status was #{http.response_header.status}"
        STDERR.puts "HEXABAT: Response body was:\n===\n#{http.response}\n==="
      end
    end

    def endpoint
      "https://api.github.com/repos/#{@repository}/issues"
    end

  end
end
