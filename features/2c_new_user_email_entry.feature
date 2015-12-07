Feature: 2c New User Email Entry

  As a new user
  I Want To: enter my email in a textbox  
  so That: I can register my email address with the system

Scenario: 
  Given I am on the new user page
  When I fill in "hello@world.com" for "user_email" 
  Then I should see "hello@world.com" in the "user_email" field
