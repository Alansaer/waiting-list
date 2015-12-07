Feature:4i save changes to notes
 As: the system
 I want to: update the user's notes field within the database
 So that: I can retrieve it at a later date

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
         When I am on the counselor page
         And I fill in "previous_notes" for "user_notes"
         And I press "Finish"
         Then I am on the home page
         And I fill in "email@email.net" for "email"
         And I press "Login"
         When I am on the counselor page
         Then I should see "previous_notes" in the "user_notes" field
