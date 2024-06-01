Feature: Placing an Order with Shipping Details
  As a user
  I want to place an order with shipping details
  So that I can verify the total price and shipping information

  Background:
    Given I am on the GMO homepage
    When I click on "Enter GMO Online"

  @maximize
  Scenario: Placing an Order with Multiple Glacier Sun Glasses
    When I add 5 "Glacier Sun Glasses" to the order
    And I press "Place An Order"
    Then I should see the Place Order page
    And I should see the following order details:
      | Qty | Product Description       | Delivery Status | Unit Price | Total Price |
      | 5   | Glacier Sun Glasses       | To Be Shipped   | $ 67.99    | $ 339.95    |
      |     | Product Total             |                 |            | $ 339.95    |
 @maximize
  Scenario: Proceeding with Order and Entering Billing and Shipping Details
    When I press "Proceed with order"
    Then I should see the Billing Information page
    When I input "John Doe" in the "name field"
    And I input "123 Main St" in the "address field"
    And I input "Anytown" in the "city field"
    And I input "CA" in the "state field"
    And I input "12345" in the "zip field"
    And I input "555-123-4567" in the "phone field"
    And I input "john@example.com" in the "email field"
    And I select "American Express" from the "credit card type dropdown"
    And I input "378282246310005" in the "card number field"
    And I input "12/23" in the "expiration date field"
    And I check the box for "Ship To: Same as 'Bill To'"
    Then the shipping details should be automatically filled with the billing details
    And I should see the following shipping details filled:
      | Name     | John Doe       |
      | Address  | 123 Main St    |
      | City     | Anytown        |
      | State    | CA             |
      | Zip      | 12345          |
      | Phone    | 555-123-4567   |
