require 'em-http-request'
require_relative 'dual_page_request'


module Hexabat
  class FirstPagesImporter
    def initialize(page_request_creator, &issue_count_known)
      @page_request_creator = page_request_creator
      @issue_count_known    = issue_count_known
      @count = 0
    end

    def import
      DualPageRequest.new(@page_request_creator, &method(:first_pages_retrieved)).get(1,1)
    end

    def first_pages_retrieved(http)
      open_page_range   = IssuesPager.page_range_from http.responses[:callback][:open].response_header
      closed_page_range = IssuesPager.page_range_from http.responses[:callback][:closed].response_header

      @count = (open_page_range.last + closed_page_range.last - 2) * 100
      puts "all but last pages: #{@count}"
      puts open_page_range
      puts closed_page_range
      DualPageRequest.new(@page_request_creator, &method(:last_pages_retrieved)).get(open_page_range.last, closed_page_range.last)
    end

    def last_pages_retrieved(http)
      open_issues   = Yajl::Parser.parse(http.responses[:callback][:open].response)
      closed_issues = Yajl::Parser.parse(http.responses[:callback][:closed].response)
      @issue_count_known.call (@count + open_issues.count + closed_issues.count)
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
