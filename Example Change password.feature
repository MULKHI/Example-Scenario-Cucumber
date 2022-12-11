Feature: Change password feature

Scenario: Successful change password with correct information
Given I am on the change password page
When I enter my correct current password, new password, and confirm password
And I click on the change password button
Then I should see a confirmation page
And I should see a success message

Scenario: Unsuccessful change password with empty fields
Given I am on the change password page
When I enter an empty current password, new password, and confirm password
And I click on the change password button
Then I should see an error message
And I should remain on the change password page

Scenario: Unsuccessful change password with incorrect current password
Given I am on the change password page
When I enter an incorrect current password, correct new password, and confirm password
And I click on the change password button
Then I should see an error message
And I should remain on the change password page

Scenario: Unsuccessful change password with mismatched new and confirm password
Given I am on the change password page
When I enter my correct current password, new password, and mismatched confirm password
And I click on the change password button
Then I should see an error message
And I should remain on the change password page
