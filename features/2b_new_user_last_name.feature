Feature:2b New User Last Name Entry
  As a new User
  I want to: enter my last name in a textbox
  So that: I can register my last name with the system

Scenario: type my last name into the text box
   Given I am on the new user page
   When I fill in "Wilson" for "user_lname"
   Then I should see "Wilson" in the "user_lname" field
