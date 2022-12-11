Feature: Register feature

Scenario: Successful registration with correct information
Given I am on the register page
When I enter my correct name, email, and password
And I click on the register button
Then I should be redirected to the dashboard page
And I should see a success message

Scenario: Unsuccessful registration with incorrect email format
Given I am on the register page
When I enter my name and password
And I enter an incorrect email format
And I click on the register button
Then I should see an error message
And I should remain on the register page

Scenario: Unsuccessful registration with empty fields
Given I am on the register page
When I enter an empty name, email, and password
And I click on the register button
Then I should see an error message
And I should remain on the register page

Scenario: Unsuccessful registration with existing email
Given I am on the register page
When I enter my name and password
And I enter an existing email
And I click on the register button
Then I should see an error message
And I should remain on the register page

Scenario: Registration with email verification
Given I am on the register page
When I enter my name, email, and password
And I click on the register button
Then I should receive an email verification link
And I should be able to complete the registration by clicking on the link

Scenario: Registration with two-factor authentication
Given I am on the register page
When I enter my name, email, and password
And I click on the register button
Then I should be redirected to the two-factor authentication page
And I should be able to complete the registration using SMS or email verification

Scenario: Registration with single sign-on using Google or Facebook
Given I am on the register page
When I click on the "Sign up with Google" or "Sign up with Facebook" button
Then I should be redirected to the Google or Facebook login page
And I should be able to complete the registration using my Google or Facebook account
