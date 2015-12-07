Feature: 2h Add new user to the database

  As the system
  I want to add the user’s information to the database
  So that it can be retrieved later.

  Background:
    Given I am on the new user page
    And I fill in "first" for "user_fname"
    And I fill in "last" for "user_lname"
    And I fill in "hello@world.com" for "user_email"

  Scenario: click the sumbit button
    When I press "Sign In"
    Then The user data should be in the database
