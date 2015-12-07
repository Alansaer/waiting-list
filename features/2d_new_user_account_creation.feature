Feature: 2d New user account creaton

  As a new user
  I want to hit the submit button 
  So that I can submit my information to the system

Background: 
	Given I am on the new user page

Scenario: click the sumbit button 
  When I press "Sign In"
  Then I should be on the home page
