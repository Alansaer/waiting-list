Feature:2f New User First Name Checking
  As the System
  I want to: check the first name field
  So that: I can ensure that the new user entered a first name


Scenario: check the first name is filled
   Given I am on the new user page
   When I fill in "firstname" for "user_fname"
   Then I should see "firstname" in the "user_fname" field
   #Then the "user_fname" should contain "firstname"
   
