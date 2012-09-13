$: << File.join(File.dirname(__FILE__), '..', '..', 'lib')
require 'eventmachine'
require_relative 'importer'

module Hexabat
  class Client
    attr_reader :callbacks

    def initialize(importer)
      @importer = importer
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
      @importer.import(callbacks)
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

__END__

Hexabat::Client.new(Hexabat::Importer.new('rails/rails')).tap do |hexabat|
  hexabat.on issue_retrieved: ->(issue){ STDERR.puts issue['number'] }
  hexabat.import
end
