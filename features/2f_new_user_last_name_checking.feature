Feature:2f New User Last Name Checking
  As the System
  I want to: check the last name field
  So that: I can ensure that the new user entered a last name


Scenario: check the last name is filled
   Given I am on the new user page
   When I fill in "lastname" for "user_lname"
   Then I should see "lastname" in the "user_lname" field
   #Then the "user_lname" should contain "lastname"
   
