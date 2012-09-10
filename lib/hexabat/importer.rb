require 'hexabat/issue_page_importer'

module Hexabat
  class Importer
    attr_reader :repository

    def initialize(repository)
      @repository = repository
    end

   def import callbacks
      query = { repository: @repository, page: 1, per_page: 100, state: 'open' }
      query.merge! callbacks
      IssuePageImporter.import query
    end

  end
end

__END__

require_relative 'issue_page_importer'

module Crafter
  module Gateway
    module Github

      class Importer
        def initialize repository, synchronizer, callbacks
          @repository      = repository
          @synchronizer    = synchronizer
          @issue_retrieved = callbacks[:issue_retrieved]
          @page_retrieved  = callbacks[:page_retrieved]
        end

        def import
          import_open_issues
          import_closed_issues
        end

        def first_page_retrieved state
          ->(http, query, issue_count) do
            page_retrieved.call http, query, issue_count
            retrieve_remaining_pages state, http, query
          end
        end

        def page_retrieved
          @wrapped_page_retrived_callback ||= ->(http, query, issue_count) do
            @synchronizer << { page: query[:page], issues: issue_count }
            @page_retrieved.call query[:page], issue_count
          end
        end

        private

        def import_open_issues
          import_page 1, {state: 'open'}, first_page_retrieved(:open)
        end

        def import_closed_issues
          import_page 1, {state: 'closed'}, first_page_retrieved(:closed)
        end

        def import_page page_number, query, page_retrieved
          query.merge! repository: @repository, page: page_number
          query.merge! page_retrieved: page_retrieved
          query.merge! issue_retrieved: @issue_retrieved
          IssuePageImporter.import query
        end

        def retrieve_remaining_pages state, http, query
          retrieve_pages remaining_pages(state, http), query
        end

        def remaining_pages state, http
          IssuesPager::page_range_from(http.response_header).tap do |page_range|
            @synchronizer.pages_of_issues_in_state state => page_range.last
          end
        end

        def retrieve_pages page_range, query
          query.delete(:page)
          page_range.each { |page| import_page page, query, page_retrieved }
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
  end
end

__END__

EM.run do
  Crafter::Gateway::Github::Importer.new('textmate/textmate') do |issue|
    STDERR.puts "ISSUE #{issue['number']} imported"
  end.import
end
