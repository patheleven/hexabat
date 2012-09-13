require 'em-http-request'

module Hexabat
  class PageRequest
    MAX_PAGE_SIZE = 100

    def self.for(repository, params)
      EM::HttpRequest.new(endpoint_for(repository)).get query: query_from(params)
    end

    private

    def self.endpoint_for(repository)
      "https://api.github.com/repos/#{repository}/issues"
    end

    def self.query_from(params)
      params.merge per_page: MAX_PAGE_SIZE
    end
  end
end
