$LOAD_PATH.unshift File.join(File.dirname(__FILE__), '..', '..', 'lib')

require 'hexabat'
require 'webmock/cucumber'

TIMEOUT = 2

module CallbackSetup
  def setup_callbacks
    setup_issue_count_known
    setup_issue_retrieved
  end

  def setup_issue_retrieved
    @retrieved_issues = []
    Hexabat.on_issue_retrieved do |issue|
      @retrieved_issues << issue
      EM.stop if @retrieved_issues.count == @issue_count_known
    end
  end

  def setup_issue_count_known
    @issue_count = 0
    Hexabat.on_issue_count_known { |count| @issue_count = count }
  end
end

World(CallbackSetup)
World(WebMock::API)
