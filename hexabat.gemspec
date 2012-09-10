# -*- encoding: utf-8 -*-
require File.expand_path('../lib/hexabat/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = %w{path11}
  gem.email         = %w{alberto@path11.com ecomba@path11.com javier@path11.com sebastian@path11.com}
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
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
