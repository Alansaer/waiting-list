Feature: Existing User Email Entry

  As an existing user
  I want to enter an email in a text box
  So that I can be identified by the system

  Scenario: Check Existence of Email Entry Box
  	Given I am on the home page
	When I fill in "newemail@email.net" for "email"
  	Then I should see "newemail@email.net" in the "email" field
