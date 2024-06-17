Feature: GMO Order Calculation
  As a user
  I want to calculate the total price, sales tax, and grand total for an order
  So that I can verify the calculations are correct

  Background:
    Given I am on the GMO homepage
    When I click on "Enter GMO Online"

  Scenario: Verifying Order Calculations
    When I add the following items to the order:
      | Quantity | Item                   |
      | 3        | 3 Person Dome Tent     |
      | 2        | External Frame Backpack|
    And I press "Place An Order"
    Then I should see the Place Order page
    And I should see the following order details in the first table:
      | Qty | Product Description       | Unit Price | Total Price |
      | 3   | 3 Person Dome Tent        | 299.99     | 899.97      |
      | 2   | External Frame Backpack   | 179.95     | 359.90      |
    And I should see the following totals right down:
      | Product Total | 1259.87 |
      | Sales Tax     | 62.99   |
      | Grand Total   | 1327.86 |
