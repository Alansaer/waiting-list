Feature: 1d New User Create

  As a new user
  I want to click a new user button
  so that I can go to the new user page

Background:
  Given I am on the home page

Scenario: click the button to be redirected to the new user page
  When I follow "create an account"
  Then I should be on the new user page
