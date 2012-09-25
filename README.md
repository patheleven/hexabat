Hexabat
=======

**Hexabat is a github issues importer tool for Ruby.**


## Installation

Add this line to your application's Gemfile:

    gem 'hexabat'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install hexabat


## Overview

The
[github issues API](http://developer.github.com/v3/issues/#list-issues-for-a-repository)
is nice, but if you try to get all the issues of a project you will have a hard
time. You will need to query page by page and get open and closed issues
separately.

Also, if you want to find out the total number of issues, there is no easy way
of doing it. You can't find out the amount of open issues through the
[repositories API](http://developer.github.com/v3/repos/#get)
but, where are the closed ones?


## Features

Hexabat tackles those two problems by providing  an easy way of importing
the issues of a Github repository:

```ruby
Hexabat.on_issue_retrieved   { |issue| puts "issue ##{issue['number']} imported" }
Hexabat.on_issue_count_known { |count| puts "The repository has #{count} issues" }
Hexabat.import 'rails/rails'
```

That means that Hexabat will allow you to:

* Find out the total number of issues (both open and closed) of the repository.
* Do some work with every issue in the repository (i.e. store it in a database).

You don't need to do both things if you don't want to. You can setup only one 
callback if that's what you need.


## EventMachine integration

Hexabat runs on top of
[EventMachine](https://github.com/eventmachine/eventmachine).

You can use it inside a running event loop:

```ruby
EM.run do
  Hexabat.on_issue_retrieved   { |issue| puts "issue ##{issue['number']} imported" }
  Hexabat.on_issue_count_known { |count| puts "The repository has #{count} issues" }
  Hexabat.import 'rails/rails' # this won't start an event loop
end
```

If an event loop is not already running Hexabat will start one for you.


### Does Hexabat stop the event loop?

No it doesn't. Given that Hexabat doesn't know the work you are going to do
with each of the issues it doesn't know when it's work will be done. For
example: if you use
[em-mongo](https://github.com/bcg/em-mongo)
to store each issue Hexabat can't know when each of those callbacks is done.
**It's your job to** sync them up and **stop the event loop*.
