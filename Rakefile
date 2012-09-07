#!/usr/bin/env rake

require 'bundler/gem_tasks'
require 'cucumber/rake/task'

namespace :cucumber do
  Cucumber::Rake::Task.new(:ok,  'Run features that should pass') do |t|
    t.cucumber_opts = ['--strict', '--tags ~@wip']
  end

  Cucumber::Rake::Task.new(:wip, 'Run features that are being worked on') do |t|
    t.cucumber_opts = ['--wip', '--tags @wip']
  end

  Cucumber::Rake::Task.new(:all, 'Run all features')
end

task cucumber: 'cucumber:ok'
