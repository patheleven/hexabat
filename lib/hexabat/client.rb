require 'eventmachine'

require_relative 'importer'
require_relative 'issue_count'
require_relative 'request_creator'

module Hexabat
  class Client
    attr_reader :callbacks

    def initialize(repository, params = {})
      @repository = repository
      @token = params[:token]
      @callbacks = {
        issue_retrieved:   ->(issue){},
        issue_count_known: ->(issue_count){}
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
      @callbacks.merge! event_callback
    end

    def known_events
      @callbacks.keys
    end

    private

    def start_importing
      Importer.new(issue_count, request_creator).import
    end

    def request_creator
      if @token.nil?
        RequestCreator.new(@repository, &callbacks[:issue_retrieved])
      else
        TokenAuthorizedRequestCreator.new(@repository, @token, &callbacks[:issue_retrieved])
      end
    end

    def issue_count
      IssueCount.new(&callbacks[:issue_count_known])
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
