Feature:4g finish button
  As: the system
  I Want: to be able to click the finish button
  So That: I can save my changes and go back to the Queue screen


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
         And I press "Finish"
         Then I should be on the guestlists page
         And I should see "There are no guests."