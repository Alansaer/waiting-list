Feature:1b Existing User Login Button

As: an existing User
I wasnt to: hit the signin button
So that: I can add my name to the queue

Scenario: click existing user login button
    Given I am on the home page
    And I fill in "brian@brian.com" for "email"
    When I press "Login"
    Then I should be on the home page