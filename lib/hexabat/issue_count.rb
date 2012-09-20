module Hexabat
  class IssueCount
    ISSUES_PER_PAGE = 100

    attr_reader :page_ranges, :issue_counts

    def initialize(&issue_count_known)
      @count_known  = issue_count_known
      @page_ranges  = { open: nil, closed: nil }
      @issue_counts = { open: {first: nil, last: nil}, closed: {first: nil, last: nil}}
    end

    def counted(page, state, page_range, issue_count)
      check_done_counting do
        @page_ranges[state] = page_range
        @issue_counts[state][page] = issue_count
        @issue_counts[state][:last] = 0 unless page_range.multiple_pages?
      end
    end

    private

    def check_done_counting
      yield
      @count_known.call(count) if all_done?
    end

    def all_done?
      done_counting_issues? :open and done_counting_issues? :closed
    end

    def count
      issue_count(:open) + issue_count(:closed)
    end

    def done_counting_issues?(state)
      not @page_ranges[state].nil? and
      not @issue_counts[state][:first].nil? and
      not @issue_counts[state][:last].nil?
    end

    def issue_count(state)
      @issue_counts[state][:first] +
      @issue_counts[state][:last] +
      @page_ranges[state].middle_page_count * ISSUES_PER_PAGE
    end

  end
end
