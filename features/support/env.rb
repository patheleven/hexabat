$LOAD_PATH.unshift File.join(File.dirname(__FILE__), '..', '..', 'lib')
$LOAD_PATH.unshift File.join(File.dirname(__FILE__), '..', '..', 'features')

require 'hexabat'
require 'webmock/cucumber'
require 'fixtures/single_open_issue'
require 'fixtures/100_open_issues'
require 'fixtures/300_closed_issues'

World(WebMock::API)
