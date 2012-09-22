require 'delegate'

module Hexabat
  module PageRange
    def self.from(headers)
      return SinglePageRange.new(1) unless headers.has_key? 'LINK'
      return MultiplePageRange.new(1, LinkHeader.new(headers['LINK']).last)
    end

    class LinkHeader
      PRED = /<https:\/\/\S+\?page=(?'prev_page'\d+)[\S]+>; rel="prev"/
      LAST = /<https:\/\/\S+\?page=(?'last_page'\d+)[\S]+>; rel="last"/

      def initialize(header)
        @header = header
      end

      def last
        # This calculation of the last page is needed because some times Github
        # returns a LINK header with a wrong last page.
        #
        # This happens when you request the last page of a repository. When you
        # do that the LINK header returns a link to the first page as the last
        # page.
        #
        # See: https://gist.github.com/3754973
        #
        # To handle that we check the link to the previous page (prev).
        # Given there is no way that a page number can be bigger than the
        # last page's number. We use the prev page to calculate the last page.
        return prev.succ if not prev.nil? and header_last < prev
        return header_last
      end

      def prev
        @prev ||= extract(PRED)
      end

      private

      def header_last
        @last ||= extract(LAST)
      end

      def extract(page_regexp)
        @header.scan(page_regexp).flatten.map(&:to_i).first
      end
    end
  end

  class MultiplePageRange < DelegateClass(Range)
    def initialize(first, last)
      super(first..last)
    end

    def page_count
      last - first + 1
    end

    def middle
      if page_count > 3
        MultiplePageRange.new(first.succ, last.pred)
      elsif page_count == 3
        SinglePageRange.new(first.succ)
      else
        EmptyPageRange.new
      end
    end

    def middle_page_count
      middle.page_count
    end

    def multiple_pages?
      true
    end
  end

  class SinglePageRange < DelegateClass(Range)
    def initialize(page)
      super page..page
    end

    def page_count
      1
    end

    def middle
      EmptyPageRange.new
    end

    def middle_page_count
      middle.page_count
    end

    def multiple_pages?
      false
    end
  end

  class EmptyPageRange < DelegateClass(Range)
    def initialize
      super 0...0
    end

    def page_count
      0
    end

    def middle
      first...last
    end

    def middle_page_count
      0
    end

    def multiple_pages?
      false
    end
  end
end
