#language: en

Feature: Callbacks

  Scenario: A single issue is retrieved and the callback is called.
    Given there is a single open issue on "path11/hexabat"
     When I set up an issue retrieved callback
      And I import the "path11/hexabat" repository
     Then the callback is called with the issue in that repository

  @wip
  Scenario: The number of issues is found out and the callback is called.
    Given there are 101 open issues and 300 closed issues on "path11/hexabat"
     When I setup the issue count known callback
      And I import the "path11/hexabat" repository
     Then the callback is called with the number of issues of the repository
