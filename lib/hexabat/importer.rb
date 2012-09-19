module Hexabat
  class Importer
    def initialize(issue_counter, request_creator)
      @issue_counter = issue_counter
      @request_creator = request_creator
    end

    def import
      retrieve_first_page_of_issues :open
      retrieve_first_page_of_issues :closed
    end

    def first_page_retrieved(state)
      ->(page_range, issue_count) do
        notify_counted_page :first, state, page_range, issue_count
        retrieve_last_page_of_issues state, page_range.last if page_range.multiple_pages?
      end
    end

    def last_page_retrieved(state)
      ->(page_range, issue_count) do
        notify_counted_page :last, state, page_range, issue_count
        retrieve_pages_of_issues state, page_range.middle
      end
    end

    private

    def retrieve_first_page_of_issues(state)
      @request_creator.for page: 1, state: state.to_s, &first_page_retrieved(state)
    end

    def retrieve_last_page_of_issues(state, page)
      @request_creator.for page: page, state: state.to_s, &last_page_retrieved(state)
    end

    def retrieve_pages_of_issues(state, pages)
      pages.each { |page| @request_creator.for page: page, state: state.to_s }
    end

    def notify_counted_page(first_or_last, state, page_range, issue_count)
      @issue_counter.counted first_or_last, state, page_range, issue_count
    end
  end
end
