require 'em-http-request'
require 'yajl'

module Hexabat
  class PageRequest
    MAX_PAGE_SIZE = 100

    def self.for(repository, params, &callback)
      build_request(repository, params).tap do |request|
        request.callback &page_retrieved(callback)
        request.errback  &error_occurred
      end
    end

    def self.page_retrieved(callback)
      ->(http) do
        parse_issues_from http.response do |issues|
          notify_issue_retrieved issues, callback
        end
      end
    end

    def self.error_occurred
      ->(http) do
        STDERR.puts "HEXABAT: Error retreiving page #{@query[:page]}"
        STDERR.puts "HEXABAT: Status was #{http.response_header.status}"
        STDERR.puts "HEXABAT: Body was:\n===\n#{http.response}\n==="
      end
    end

    private

    def self.build_request(repository, params)
      EM::HttpRequest.new(endpoint_for(repository)).get query: query_from(params)
    end

    def self.endpoint_for(repository)
      "https://api.github.com/repos/#{repository}/issues"
    end

    def self.query_from(params)
      params.merge per_page: MAX_PAGE_SIZE
    end

    def self.parse_issues_from(json)
      yield Yajl::Parser.parse(json)
    end

    def self.notify_issue_retrieved(issues, callback)
      issues.each do |issue|
        EM.next_tick { callback.call issue }
      end
    end

  end
end
