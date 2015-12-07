Feature:3a view queue
	As: a counselor
	I Want To: I want to see a list of users in the queue
	So that: I can choose which users to serve

Background: 
	Given I am on the new user page
	And the following users exist:
	|fname|lname|email|
	|john|smith|email@email.net|
	

Scenario: 
	 Given I am on the home page
         And I fill in "email@email.net" for "email"
         And I press "Login"
         When I am on the guestlists page
         Then I should see "john"

