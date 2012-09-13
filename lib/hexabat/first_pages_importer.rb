require 'em-http-request'

module Hexabat
  class FirstPagesImporter
    def initialize(page_request_creator, &issue_count_known)
      @page_request_creator = page_request_creator
      @issue_count_known    = issue_count_known
    end

    def import
      multi_request = EM::MultiRequest.new
      multi_request.add :open,   page_request(page: 1, state: 'open')
      multi_request.add :closed, page_request(page: 1, state: 'closed')
      multi_request.callback &method(:first_pages_retrieved)
      multi_request.errback  &method(:error_occurred)
    end

    def first_pages_retrieved(http)
      open_page_range   = IssuesPager.page_range_from http.responses[:callback][:open].response_header
      closed_page_range = IssuesPager.page_range_from http.responses[:callback][:closed].response_header
    end

    def error_occurred http
    end

    private

    def page_request(query)
      @page_request_creator.for query
    end
  end

  module IssuesPager
    ONE_PAGE_RANGE = 1...1

    def self.page_range_from headers
      return ONE_PAGE_RANGE unless headers.has_key? 'LINK'
      return extract_page_range_from headers['LINK']
    end

    def self.extract_page_range_from link_header
      match = link_header.scan(/\?page=(?'page_number'\d+)/)
      next_page = match[0][0].to_i
      last_page = match[1][0].to_i
      next_page..last_page
    end
  end


  
end




__END__

issue_imported = ->(issue) { puts issue['number'] }
EM.run do
  Hexabat::FirstPagesImporter.new('rails/rails', issue_retrieved: issue_imported).import
end
