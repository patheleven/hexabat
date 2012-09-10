require 'em-http-request'
require 'yajl'

module Hexabat
  class IssuePageImporter
    MAX_PAGE_SIZE = 100

    def self.import params
      new(params).import
    end

    def initialize(params)
      @repository      = params.delete :repository
      @issue_retrieved = params.delete(:issue_retrieved)
      @query           = params.merge(per_page: MAX_PAGE_SIZE)
    end

    def import
      http = EM::HttpRequest.new(endpoint).get(query: @query)
      http.callback &page_retrieved
      http.errback  &error_occurred
    end

    def page_retrieved
      ->(http) do
        parse_issues_from http.response do |issues|
          notify_issue_retrieved issues
        end
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

    private

    def parse_issues_from json
      yield Yajl::Parser.parse(json)
    end

    def notify_issue_retrieved issues
      issues.each { |issue| @issue_retrieved.call issue }
    end

  end
end

__END__


require 'em-http-request'
require 'yajl'

module Crafter
  module Gateway
    module Github

      class IssuePageImporter
        MAX_PAGE_SIZE = 100

        def self.import params
          new(params).import
        end

        def initialize params
          @repository      = params.delete(:repository)
          @issue_retrieved = params.delete(:issue_retrieved)
          @page_retrieved  = params.delete(:page_retrieved)
          @query           = params.merge(per_page: MAX_PAGE_SIZE)
        end

        def endpoint
          "https://api.github.com/repos/#{@repository}/issues"
        end

        def import
          http = EM::HttpRequest.new(endpoint).get(query: @query)
          http.callback &page_retrieved
          http.errback  &error_occurred
        end

        def page_retrieved
          ->(http) do
            parse_issues_from http.response do |issues|
              notify_issue_retrieved issues
              notify_page_retrieved http, issues.count
            end
          end
        end

        def error_occurred
          ->(http) do
            STDERR.puts "HEXABAT: There was an error retreiving page #{@query[:page]}"
            STDERR.puts "HEXABAT: Response status was #{http.response_header.status}"
            STDERR.puts "HEXABAT: Response body was:\n===\n#{http.response}\n==="
          end
        end

        private

        def parse_issues_from json
          yield Yajl::Parser.parse(json)
        end

        def notify_issue_retrieved issues
          issues.each { |issue| @issue_retrieved.call issue }
        end

        def notify_page_retrieved http, issue_count
          @page_retrieved.call http, @query, issue_count
        end
      end
    end
  end
end
