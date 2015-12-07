Feature:4f back button
  As: a counselor
  I Want: be able to go back to the queue screen
  So That: I can see the queue again without saving changes to the current user

Background: 
	Given I am on the new user page
	And the following users exist:
	|fname|lname|email|
	|john|smith|email@email.net|
	
Scenario: 
	 Given I am on the home page
         And I fill in "email@email.net" for "email"
         And I press "Login"
         When I am on the counselor page
         When I press "Back"
         Then I should be on the guestlists page