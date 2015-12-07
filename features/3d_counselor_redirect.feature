Feature:3d counselor redirect
	As: the system
	I Want To: redirect the counselor to the Counselor view
	So that: they can serve the user

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
         And I follow "john smith"
         Then I should be on the counselor page

                    
     
 
 