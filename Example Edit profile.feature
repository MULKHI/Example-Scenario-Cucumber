Feature: Edit profile feature

Scenario: Successful edit profile with correct information
Given I am on the edit profile page
When I enter my correct name, email, phone, and address
And I click on the save button
Then I should see a confirmation page
And I should see a success message

Scenario: Unsuccessful edit profile with empty fields
Given I am on the edit profile page
When I enter an empty name, email, phone, and address
And I click on the save button
Then I should see an error message
And I should remain on the edit profile page

Scenario: Unsuccessful edit profile with invalid email
Given I am on the edit profile page
When I enter a correct name, invalid email, correct phone, and correct address
And I click on the save button
Then I should see an error message
And I should remain on the edit profile page

Scenario: Unsuccessful edit profile with invalid phone
Given I am on the edit profile page
When I enter a correct name, correct email, invalid phone, and correct address
And I click on the save button
Then I should see an error message
And I should remain on the edit profile page
