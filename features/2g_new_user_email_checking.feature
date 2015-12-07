Feature:2g New User Email Checking
  As the System
  I want to: check the email field
  So that: I can ensure that the new user entered an email


Scenario: check the email is filled
   Given I am on the new user page
   When I fill in "hello@world.com" for "user_email"
   Then I should see "hello@world.com" in the "user_email" field
   #Then the "user_email" should contain "hello@world.com"
   
