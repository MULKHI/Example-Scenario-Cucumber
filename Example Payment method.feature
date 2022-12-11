Feature: Payment method feature

Scenario: Successful payment with credit card
Given I am on the payment page
When I select the credit card payment method
And I enter my correct credit card information
And I click on the pay button
Then I should see a confirmation page
And I should see a success message

Scenario: Successful payment with debit card
Given I am on the payment page
When I select the debit card payment method
And I enter my correct debit card information
And I click on the pay button
Then I should see a confirmation page
And I should see a success message

Scenario: Successful payment with bank transfer
Given I am on the payment page
When I select the bank transfer payment method
And I enter my correct bank account information
And I click on the pay button
Then I should see a confirmation page
And I should see a success message

Scenario: Successful payment with PayPal
Given I am on the payment page
When I select the PayPal payment method
And I enter my correct PayPal email and password
And I click on the pay button
Then I should see a confirmation page
And I should see a success message

Scenario: Successful payment with Google Pay
Given I am on the payment page
When I select the Google Pay payment method
And I enter my correct Google Pay information
And I click on the pay button
Then I should see a confirmation page
And I should see a success message

Scenario: Successful payment with Apple Pay
Given I am on the payment page
When I select the Apple Pay payment method
And I enter my correct Apple Pay information
And I click on the pay button
Then I should see a confirmation page
And I should see a success message
