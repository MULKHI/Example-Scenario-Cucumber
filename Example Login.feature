#Author: mulkhiputral@gmail.com
#Author: mulkhiputral@gmail.com
Feature: Login feature

Scenario: Successful login with correct username and password
Given I am on the login page
When I enter my correct username and password
And I click on the login button
Then I should be redirected to the dashboard page
And I should see a success message

Scenario: Unsuccessful login with incorrect username and password
Given I am on the login page
When I enter my incorrect username and password
And I click on the login button
Then I should see an error message
And I should remain on the login page

Scenario: Unsuccessful login with empty username and password
Given I am on the login page
When I enter an empty username and password
And I click on the login button
Then I should see an error message
And I should remain on the login page

Scenario: Unsuccessful login with unregistered username
Given I am on the login page
When I enter an unregistered username and password
And I click on the login button
Then I should see an error message
And I should remain on the login page

Scenario: Forgotten password
Given I am on the login page
When I click on the "forgotten password" link
Then I should be redirected to the password reset page

Scenario: Change password after successful login
Given I am on the dashboard page after a successful login
When I click on the "change password" link
Then I should be redirected to the change password page

Scenario: Two-factor authentication
Given I am on the login page
When I enter my correct username and password
And I click on the login button
Then I should be redirected to the two-factor authentication page
And I should be able to login using SMS or email verification

Scenario: Single sign-on using Google or Facebook
Given I am on the login page
When I click on the "Login with Google" or "Login with Facebook" button
Then I should be redirected to the Google or Facebook login page
And I should be able to login using my Google or Facebook account

Scenario: Logout
Given I am on the dashboard page after a successful login
When I click on the "logout" button
Then I should be logged out and redirected to the login page

Scenario: Session timeout
Given I am on the dashboard page after a successful login
When I remain inactive for a certain period of time
Then I should be automatically logged out
And I should be redirected to the login page
