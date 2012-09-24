require 'eventmachine'

require_relative 'importer'
require_relative 'issue_count'
require_relative 'request_creator'

module Hexabat
  class Client
    attr_reader :callbacks

    def initialize(repository)
      @repository = repository
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
      Importer.new(
        IssueCount.new(&callbacks[:issue_count_known]),
        RequestCreator.new(@repository, &callbacks[:issue_retrieved])
      ).import
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


@issues = []
EM.run do
  Hexabat::Client.new('rails/rails').tap do |hexabat|
    hexabat.on issue_retrieved: ->(issue){ @issues << issue; EM.stop if @issues.count == @count }
    hexabat.on issue_count_known: ->(count){ @count = count; STDERR.puts "COUNT: #{count}" }
    hexabat.import
  end
  EM.add_periodic_timer(3) { STDERR.puts "#{@issues.count} so far" }
end
