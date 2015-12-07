Feature: 2i Add New User to Queue

  As the system
  I want to add the user to the service queue
  So that I can keep track of which users still need to be served

Background: 
	Given I am on the new user page
	And the following users exist:
	|fname|lname|email|
	|john|smith|john@smith.net|
	|big|foot|chewy@elusive.com|
	
	And the following queue items exist:
	|fname|lname|email|
	|john|smith|john@smith.net|

Scenario: add new user to queue 
  When I fill in "user_fname" with "Mary"
  And I fill in "user_lname" with "Jane"
  And I fill in "user_email" with "mary@jane.net"
  When I press "Sign In"
  Then the queue should include the following item: "mary@jane.net"
