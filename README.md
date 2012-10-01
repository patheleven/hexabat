# Hexabat [![Build Status](https://secure.travis-ci.org/jacegu/hexabat.png?branch=master)](http://travis-ci.org/jacegu/hexabat)  [![Code Climate](https://codeclimate.com/badge.png)](https://codeclimate.com/github/path11/hexabat)

**Hexabat is a Github issues importer tool for Ruby.**

## Installation

Add this line to your application's Gemfile:

    gem 'hexabat'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install hexabat


## Overview

The
[Github issues API](http://developer.github.com/v3/issues/#list-issues-for-a-repository)
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
Hexabat.on_issue_retrieved do |issue|
  puts "issue ##{issue['number']} imported"
end

Hexabat.on_issue_count_known do |count|
  puts "The repository has #{count} issues"
end

Hexabat.on_error do |repo, status, message|
  STDERR.puts "Failed to import #{repo} due to #{status}: #{message}"
end

Hexabat.import 'rails/rails'
```

That means that Hexabat will allow you to:

* **Find out the total number of issues** (both open and closed) of the repository.
* **Do something with the data of every issue in the repository** (i.e. store it in a database).
* **Handle importing errors properly** (i.e. store the error reason in a database)

You don't need set every single callback if you don't want to. You can setup only one
callback if that's what you need. We also provide a default `errback` that will
print to `STDERR` a message with the failure (pretty similar to the example above).



###Authentication

If you are importing a public repository's issues you don't need to authenticate:

```ruby
Hexabat.import 'rails/rails'
```

If you want to import issues on behalf of a user you authenticated with OAuth
you can use her token in order to do it:

```ruby
Hexabat.import 'path11/private_repo', token: auth_token
```


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

Hexabat will start the event loop for you if you call it outside a running one.


### Does Hexabat stop the event loop?

No it doesn't. Given that Hexabat doesn't know the work you are going to do
with each of the issues it doesn't know when it's work will be done. For
example: if you use
[em-mongo](https://github.com/bcg/em-mongo)
to store each issue Hexabat can't know when each of those callbacks is done.

**It's your job to** sync them up and **stop the event loop**.


## What's next?

There are a few tweaks and improvements that we want to add to Hexabat:

* Being able to provide an OAuth tokens, and keys so you can authorize your
application without the need of a user OAuth token.

After that we have a few more things planned but that will be a surprise.
