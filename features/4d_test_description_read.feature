Feature:4d test description read
  As: a counselor
  I Want To: be able to read notes from previous visits
  So That: I can keep track of the user's history

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
         When I fill in "previous_notes" for "user_notes" 
         Then I should see "previous_notes" in the "user_notes" field



