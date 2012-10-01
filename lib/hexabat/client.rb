require 'eventmachine'

require_relative 'importer'
require_relative 'issue_count'
require_relative 'page_request_builder'
require_relative 'page_response_processor'

module Hexabat
  class Client
    attr_reader :repository, :params, :callbacks

    def initialize(repository, params = {})
      @repository = repository
      @params = params
      @callbacks = {
        issue_retrieved:   ->(issue){},
        issue_count_known: ->(issue_count){},
        error: ->(repository, status, message) { STDERR.puts "#{repository} #{status} #{message}" }
      }
    end

    def import
      if EM.reactor_running?
        start_importing
      else
        EM.run &method(:start_importing)
      end
    end

    def on(event_callback)
      event = event_callback.keys.first
      raise_unknown_event_error event unless known? event
      callbacks.merge! event_callback
    end

    def known_events
      callbacks.keys
    end

    private

    def start_importing
      Importer.new(issue_count, request_creator).import
    end

    def request_creator
      PageRequestBuilder.for repository, response_processor, params
    end

    def issue_count
      IssueCount.new(&callbacks[:issue_count_known])
    end

    def response_processor
      PageResponseProcessor.new repository, callbacks[:issue_retrieved], callbacks[:error]
    end

    def known? event
      known_events.include? event
    end

    def raise_unknown_event_error event
      known = known_events.join(', ')
      raise ArgumentError.new "Unknown #{event} event. Events: #{known}"
    end

  end
end
