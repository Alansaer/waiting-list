Feature:1c Existing User Email Verification
  As: A System Function
  I Want To: Recognize an Invalid Email Address
  So That: I Can Send An Error Message To The User

Background: emails in database
	Given: the following emails exist
  | email                      | first     |last         |
  | personone@email.com        | Person    |One          |
  | usertwo@email.net          | User      |Two          |
  | playerthree@email.net      | Player    |Three        |


Background: 	
	Given I am on the home page

Scenario: Click sign in button and the webpage will return to home page if the email is not in the database
  When I fill in "personone@email.com" for "email"
  And I follow "create an account"
  Then I should be on the home page
