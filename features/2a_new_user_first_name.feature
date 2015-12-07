Feature:2a New User First Name Entry
  As a new User
  I want to: enter my first name in a textbox
  So that: I can register my first name with the system

Scenario: type my first name into the text box
   Given I am on the new user page
   When I fill in "Tae" for "user_fname"
   Then I should see "Tae" in the "user_fname" field
