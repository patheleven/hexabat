require 'em-http-request'
require 'em-http/middleware/json_response'
require 'hexabat/page_range'

module Hexabat
  class ImportError < Exception; end

  module PageRequestBuilder
    def self.for(repository, response_processor, params = {})
      if params.has_key? :token
        TokenAuthorized.new(repository, params[:token], response_processor)
      elsif params.has_key? :oauth
        raise 'OAuth not supported yet'
      else
        Unauthorized.new(repository, response_processor)
      end
    end

    class Base
      MAX_PAGE_SIZE = 100

      def initialize(repository, response_processor)
        @repository = repository
        @response_processor = response_processor
        EM::HttpRequest.use(EM::Middleware::JSONResponse)
      end

      def for(params, &page_callback)
        build_request(query_from params).callback &page_retrieved(page_callback)
      end

      def page_retrieved(page_callback = nil)
        ->(http) { @response_processor.process(http, &page_callback) }
      end

      def endpoint
        "https://api.github.com/repos/#{@repository}/issues"
      end

      private

      def build_request(query)
        raise "PageRequestBuilder::Base does not know how to build requests. Use one if it's subclasses"
      end

      def query_from(params)
        params.merge per_page: MAX_PAGE_SIZE
      end
    end

    class Unauthorized < Base
      def build_request(query)
        EM::HttpRequest.new(endpoint).get query: query
      end

      private :build_request
    end

    class TokenAuthorized < Base
      def initialize(repository, token, response_processor)
       @token = token
       super(repository, response_processor)
      end

      def build_request(query)
        EM::HttpRequest.new(endpoint).get query: query, head: headers
      end

      def headers
        { 'Authorization' => "token #{@token}" }
      end

      private :build_request, :headers
    end

  end
end
