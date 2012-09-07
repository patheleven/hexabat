#language: en

Feature: Callbacks

  Scenario: I set up a callback for when an issue is retrieved and the
            callback is called with every retrieved issue.
    Given I set up an issue retrieved callback
     When I import the "path11/hexabat" repository
     Then the callback is called with every issue in that repository
