# -*- encoding: utf-8 -*-
require File.expand_path('../lib/hexabat/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = %w{path11}
  gem.email         = %w{alberto@path11.com ecomba@path11.com javier@path11.com sebastian@path11.com}
  gem.description   = %q{A Github issues importing tool}
  gem.summary       = %q{Importing all the issues of a Github repository is a complex task: the Github API does not provide an easy way of doing it. Hexabat will help you with that. It will allow you to find out the total number of issues (counting both open and closed ones) and to perform an action with each one of them.}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "hexabat"
  gem.require_paths = ["lib"]
  gem.version       = Hexabat::VERSION

  gem.add_runtime_dependency     'eventmachine', '~> 1.0.0'
  gem.add_runtime_dependency     'em-http-request'
  gem.add_runtime_dependency     'yajl-ruby'

  gem.add_development_dependency 'cucumber'
  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'webmock'
end
