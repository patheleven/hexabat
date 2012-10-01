require 'eventmachine'
require 'hexabat/page_range'

module Hexabat
  class PageResponseProcessor
    def initialize(repository, issue_callback, errback)
      @repository = repository
      @issue_callback = issue_callback
      @errback = errback
    end

    def process(http, &page_callback)
      check_for_errors(http)
      process_response(http.response_header, http.response, page_callback)
    end

    private

    def check_for_errors(http)
      status = http.response_header.status
      @errback.call @repository, status, http.response['message'] if status > 200
    end

    def process_response(headers, issues, page_callback)
      page_callback.call PageRange.from(headers), issues.count unless page_callback.nil?
      notify_issue_retrieved issues
    end

    def notify_issue_retrieved(issues)
      issues.each do |issue|
        EM.next_tick { @issue_callback.call issue }
      end
    end
  end
end
