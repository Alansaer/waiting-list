Feature: 1e Existing User Queue Addition

  As: the system
  I want to: accept an email address
  So that: I can add an existing user to the queue

Scenario: Add existing User to queue
  Given I am on the home page
  And I fill in "email@email.com" for "email"
  And I press "Login"
  Then I should be on the home page
 # And I should see the "email@email.com" in the "email" field
