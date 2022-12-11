Feature: Add to cart feature

Scenario: Successful add to cart with correct quantity
Given I am on the item page
When I enter a correct quantity of the item
And I click on the add to cart button
Then I should see the added item on the cart page
And I should see a success message

Scenario: Unsuccessful add to cart with empty quantity
Given I am on the item page
When I enter an empty quantity of the item
And I click on the add to cart button
Then I should see an error message
And I should remain on the item page

Scenario: Unsuccessful add to cart with invalid quantity
Given I am on the item page
When I enter an invalid quantity of the item
And I click on the add to cart button
Then I should see an error message
And I should remain on the item page

Scenario: Add to cart with item quantity limit
Given I am on the item page
When I enter a quantity that exceeds the item quantity limit
And I click on the add to cart button
Then I should see an error message
And I should remain on the item page
