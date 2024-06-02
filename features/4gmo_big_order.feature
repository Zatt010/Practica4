 Feature: GMO Online Catalog Item Details
 As a user
  I want to place an order with multiple items
  So that I can verify the total price and details of my order

  Background:
    Given I am on the GMO homepage
    When I click on "Enter GMO Online"

  @maximize
  Scenario: Placing an Order with Multiple Items
    When I add 5 "3 Person Dome Tent" to the order
    And I add 5 "External Frame Backpack" to the order
    And I add 5 "Glacier Sun Glasses" to the order
    And I add 5 "Padded Socks" to the order
    And I add 5 "Hiking Boots" to the order
    And I add 5 "Back Country Shorts" to the order
    And I press "Place An Order"
    Then I should see the Place Order page
    And I should see the following order details:
      | Qty | Product Description       | Delivery Status | Unit Price | Total Price |
      | 5   | 3 Person Dome Tent        | To Be Shipped   | $ 299.99   | $ 1499.95   |
      | 5   | External Frame Backpack   | To Be Shipped   | $ 179.95   | $ 899.75    |
      | 5   | Glacier Sun Glasses       | To Be Shipped   | $ 67.99    | $ 339.95    |
      | 5   | Padded Socks              | To Be Shipped   | $ 19.99    | $ 99.95     |
      | 5   | Hiking Boots              | To Be Shipped   | $ 109.90   | $ 549.50    |
      | 5   | Back Country Shorts       | To Be Shipped   | $ 24.95    | $ 124.75    |
    And I should see the information bellow totally completed:
      | Product Total             | $ 3513.85   |
      | Sales Tax                 | $ 175.69    |
      | Shipping & Handling       | $ 5.00      |
      | Grand Total               | $ 3694.54   |
