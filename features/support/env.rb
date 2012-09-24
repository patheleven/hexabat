$LOAD_PATH.unshift File.join(File.dirname(__FILE__), '..', '..', 'lib')

require 'hexabat'
require 'webmock/cucumber'

World(WebMock::API)
