Feature: Placing an Order with Shipping Details
  As a user
  I want to place an order with shipping details
  So that I can verify the total price and shipping information

  Background:
    Given 3I am on the GMO homepage
    When 3I click on "Enter GMO Online"

  @maximize
  Scenario: Placing an Order with Multiple Glacier Sun Glasses
    When 3I add 5 "Glacier Sun Glasses" to the order
    And 3I press "Place An Order"
    Then 3I should see the Place Order page
    And 3I should see the following order details:
      | Qty | Product Description       | Delivery Status | Unit Price | Total Price |
      | 5   | Glacier Sun Glasses       | To Be Shipped   | $ 67.99    | $ 339.95    |
      |     | Product Total             |                 |            | $ 339.95    |
    And 3I press "Proceed with order"
    Then 3I should see the Billing Information page
    When 3I fill in the following billing details:
      | Name            | John Doe         |
      | Address         | 123 Main St      |
      | City            | Anytown          |
      | State           | CA               |
      | ZipCode         | 12345            |
      | Phone           | 555-123-4567     |
      | Email           | john@example.com |
    And 3I press "Same As Bill" checkbox
    And 3I should see the following shipping details filled:
      | Name     | John Doe       |
      | Address  | 123 Main St    |
      | City     | Anytown        |
      | State    | CA             |
      | ZipCode  | 12345          |
      | Phone    | 555-123-4567   |
