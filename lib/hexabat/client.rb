require 'eventmachine'

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

Hexabat::Client.new('rails/rails').tap do |hexabat|
  issue_retrieved   = ->(issue){ puts issue['number'] }
end.import

require 'eventmachine'
require_relative 'importer'
require_relative 'synchronizer'

module Crafter
  module Gateway
    module Github
      class Hexabat
        attr_reader :repository, :callbacks

        def initialize repository
          @repository = repository
          @callbacks = {
            issue_retrieved:   ->(issue){},
            issue_count_known: ->(issue_count){},
            page_retrieved:    ->(page, issue_count){},
            page_count_known:  ->(page_count){}
          }
        end

        def on event_callback
          event = event_callback.keys.first
          raise_unknown_event_error event unless known? event
          @callbacks.merge! event_callback
        end

        def known_events
          @callbacks.keys
        end

        def import
          if EM.reactor_running?
            start_importing
          else
            EM.run &method(:start_importing)
          end
        end

        private

        def known? event
          known_events.include? event
        end

        def raise_unknown_event_error event
          known = known_events.join(', ')
          raise ArgumentError.new "Unknown #{event} event. Events: #{known}"
        end

        def start_importing
          Importer.new(
            repository,
            Synchronizer.new(synchronizer_callbacks),
            importer_callbacks
          ).import
        end

        def importer_callbacks
          @callbacks.select do |event|
            [:issue_retrieved, :page_retrieved].include? event
          end
        end

        def synchronizer_callbacks
          @callbacks.select do |event|
            [:issue_count_known, :page_count_known].include? event
          end
        end

      end
    end
  end
end

@received_issue_count = 0

Crafter::Gateway::Github::Hexabat.new('tripku/kuotus').tap do |hexabat|
  issue_retrieved   = ->(issue){
    @received_issue_count += 1
  }
  page_count_known  = ->(count){ STDERR.puts "PAGES TO IMPORT: #{count}" }
  issue_count_known = ->(count){
    @total_issues= count
    STDERR.puts "ISSUES TO IMPORT: #{count}"
    sleep 1
  }
  hexabat.on issue_retrieved: issue_retrieved
  hexabat.on page_count_known: page_count_known
  hexabat.on issue_count_known: issue_count_known
  hexabat.on page_retrieved: ->(page, issue_count) {
    if @total_issues and @received_issue_count >= @total_issues
      STDERR.puts 'ALL DONE'; EM.stop
    end
  }
end.import
