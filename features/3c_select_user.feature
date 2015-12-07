Feature:3c select user
	As: a counselor
	I Want To: secect a user
	So that: I can see the user information

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
         Then I should see "email@email.net"
                    
     
 
 
 
 
  
 
 
