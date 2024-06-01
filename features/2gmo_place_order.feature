Feature: Placing an Order with a Single Item
  As a user
  I want to place an order with a single item
  So that I can verify the details of my order

  Background:
    Given 2I am on the GMO homepage
    When 2I click on "Enter GMO Online"

  @maximize
  Scenario: Placing an Order with 1 3 Person Dome Tent
    When 2I add 1 "3 Person Dome Tent" to the order
    And 2I press "Place An Order"
    Then 2I should see the Place Order page
    And 2I should see the following order details:
      | Qty | Product Description       | Delivery Status | Unit Price | Total Price |
      | 1   | 3 Person Dome Tent        | To Be Shipped   | $ 299.99   | $ 299.99    |
      And 2I should see the following information:
      | Product Total | $ 299.99    |

  @maximize
  Scenario: Placing an Order with 1 External Frame Backpack
    When 2I add 1 "External Frame Backpack" to the order
    And 2I press "Place An Order"
    Then 2I should see the Place Order page
    And 2I should see the following order details:
      | Qty | Product Description       | Delivery Status | Unit Price | Total Price |
      | 1   | External Frame Backpack   | To Be Shipped   | $ 179.95   | $ 179.95    |
      And 2I should see the following information:
      | Product Total | $ 179.95    |

  @maximize
  Scenario: Placing an Order with 1 Glacier Sun Glasses
    When 2I add 1 "Glacier Sun Glasses" to the order
    And 2I press "Place An Order"
    Then 2I should see the Place Order page
    And 2I should see the following order details:
      | Qty | Product Description       | Delivery Status | Unit Price | Total Price |
      | 1   | Glacier Sun Glasses       | To Be Shipped   | $ 67.99    | $ 67.99     |
      And 2I should see the following information:
      | Product Total | $ 67.99     |

  @maximize
  Scenario: Placing an Order with 1 Padded Socks
    When 2I add 1 "Padded Socks" to the order
    And 2I press "Place An Order"
    Then 2I should see the Place Order page
    And 2I should see the following order details:
      | Qty | Product Description       | Delivery Status | Unit Price | Total Price |
      | 1   | Padded Socks              | To Be Shipped   | $ 19.99    | $ 19.99     |
      And 2I should see the following information:
      | Product Total | $ 19.99     |

  @maximize
  Scenario: Placing an Order with 1 Hiking Boots
    When 2I add 1 "Hiking Boots" to the order
    And 2I press "Place An Order"
    Then 2I should see the Place Order page
    And 2I should see the following order details:
      | Qty | Product Description       | Delivery Status | Unit Price | Total Price |
      | 1   | Hiking Boots              | To Be Shipped   | $ 109.90   | $ 109.90    |
      And 2I should see the following information:
      | Product Total | $ 109.90    |

  @maximize
  Scenario: Placing an Order with 1 Back Country Shorts
    When 2I add 1 "Back Country Shorts" to the order
    And 2I press "Place An Order"
    Then 2I should see the Place Order page
    And 2I should see the following order details:
      | Qty | Product Description       | Delivery Status | Unit Price | Total Price |
      | 1   | Back Country Shorts       | To Be Shipped   | $ 24.95    | $ 24.95     |
      And 2I should see the following information:
      | Product Total | $ 24.95     |
