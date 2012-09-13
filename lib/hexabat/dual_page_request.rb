require 'em-http-request'

module Hexabat
  class DualPageRequest
    def initialize(page_request_creator, &callback)
      @page_request_creator = page_request_creator
      @callback = callback
    end

    def get(open_page, closed_page)
      EM::MultiRequest.new.tap do |multi_request|
        multi_request.add :open,   open_page_request(open_page)
        multi_request.add :closed, closed_page_request(closed_page)
        multi_request.callback &@callback
        multi_request.errback  &method(:error_occurred)
      end
    end

    def error_occurred(http)
    end

    private

    def open_page_request(page_number)
      @page_request_creator.for page: page_number, state: 'open'
    end

    def closed_page_request(page_number)
      @page_request_creator.for page: page_number, state: 'closed'
    end
  end
end
