Feature: 4b User Last Name Display
	As: a counselor 
	I Want To: see the user's last name
	So That: I can serve the user better 

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
         Then I should see "smith"

