require 'delegate'

module Hexabat
  module PageRange
    def self.from(headers)
      return SinglePageRange.new(1) unless headers.has_key? 'LINK'
      return MultiplePageRange.new(1, last_page_from(headers['LINK']))
    end

    def self.last_page_from(link_header)
      link_header.scan(/\?page=(?'page_number'\d+)/)[1][0].to_i
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
      if page_count > 2
        MultiplePageRange.new(first.succ, last.pred)
      else
        SinglePageRange.new(first.succ)
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
