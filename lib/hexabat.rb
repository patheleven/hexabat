require 'hexabat/client'
require 'hexabat/importer'
require 'hexabat/version'

module Hexabat
  def self.import(repository)
    Client.new(repository).tap do |hexabat|
      hexabat.on issue_retrieved:   @issue_retrieved
      hexabat.on issue_count_known: @issue_count_known
      hexabat.import
    end
  end

  def self.on_issue_retrieved(&callback)
    @issue_retrieved = callback
  end

  def self.on_issue_count_known(&callback)
    @issue_count_known = callback
  end
end
