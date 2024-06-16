Feature: Placing an Order with a Single Item
  As a user
  I want to place an order with a single item
  So that I can verify the details of my order

  Background:
    Given I am on the GMO homepage
    When I click on "Enter GMO Online"

  @maximize
  Scenario Outline: Placing an Order with a Single Item
    When I add <Qty> "<Product Description>" to the order
    And I press "Place An Order"
    Then I should see the Place Order page
    And I should see the following order details for the only item:
      | Qty | Product Description       | Delivery Status | Unit Price | Total Price |
      | <Qty> | <Product Description>   | <Delivery Status> | <Unit Price> | <Total Price> |
    And I should see the Product Total information bellow:
      | Product Total | <Total Price> |
    Examples:
      | Qty | Product Description    | Delivery Status | Unit Price | Total Price |
      | 1   | 3 Person Dome Tent     | To Be Shipped   | $ 299.99   | $ 299.99    |
      | 1   | External Frame Backpack| To Be Shipped   | $ 179.95   | $ 179.95    |
      | 1   | Glacier Sun Glasses    | To Be Shipped   | $ 67.99    | $ 67.99     |
      | 1   | Padded Socks           | To Be Shipped   | $ 19.99    | $ 19.99     |
      | 1   | Hiking Boots           | To Be Shipped   | $ 109.90   | $ 109.90    |
      | 1   | Back Country Shorts    | To Be Shipped   | $ 24.95    | $ 24.95     |