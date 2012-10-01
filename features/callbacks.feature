#language: en

Feature: Callbacks

  Scenario: A single issue is retrieved and the callback is called.
    Given there is a single open issue on "path11/hexabat"
     When I set up an issue retrieved callback
      And I import the "path11/hexabat" repository
     Then the callback is called with the issue in that repository

  Scenario: The number of issues is found out and the callback is called.
    Given there are 101 open issues and 300 closed issues on "path11/hexabat"
     When I setup the issue count known callback
      And I import the "path11/hexabat" repository
     Then the callback is called with the number of issues of the repository

  Scenario: The repository can't be imported and the errback is called.
    Given the repository "path11/rails" doesn't exist
     When I setup the errback
      And I import the "path11/rails" repository
     Then the errback is called with the error message
