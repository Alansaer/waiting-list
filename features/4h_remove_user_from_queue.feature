Feature:4h remove user from queue
  As: the system
  I Want To: Remove the user from queue
  So that: I can keep track of the users that still need to be served


Background: 
	Given I am on the new user page
	And the following users exist:
	|fname|lname|email|
	|john|smith|email@email.net|
        |alex|craig|com@email.name|
	

Scenario: 
	 Given I am on the home page
         And I fill in "email@email.net" for "email"
         And I press "Login"
         And I fill in "com@email.name" for "email"
         And I press "Login"
         When I am on the counselor page
         When I press "Finish"
         Then I should not see "john"