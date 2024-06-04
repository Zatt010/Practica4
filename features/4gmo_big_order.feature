 Feature: GMO Online Catalog Item Details
 As a user
  I want to place an order with multiple items
  So that I can verify the total price and details of my order

  Background:
    Given I am on the GMO homepage
    When I click on "Enter GMO Online"

  @maximize
  Scenario: Placing an Order with Multiple Items
    When I add the following items to the order:
      | Quantity | Item                   |
      | 5        | 3 Person Dome Tent     |
      | 5        | External Frame Backpack|
      | 5        | Glacier Sun Glasses    |
      | 5        | Padded Socks           |
      | 5        | Hiking Boots           |
      | 5        | Back Country Shorts    |
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

@maximize
Scenario: Placing an Order with Different Quantities (2, 6, 8, 3, 10, 12)
  When I add the following items to the order:
    | Quantity | Item                   |
    | 2        | 3 Person Dome Tent     |
    | 6        | External Frame Backpack|
    | 8        | Glacier Sun Glasses    |
    | 3        | Padded Socks           |
    | 10       | Hiking Boots           |
    | 12       | Back Country Shorts    |
  And I press "Place An Order"
  Then I should see the Place Order page
  And I should see the following order details:
    | Qty | Product Description       | Delivery Status | Unit Price | Total Price |
    | 2   | 3 Person Dome Tent        | To Be Shipped   | $ 299.99   | $ 599.98    |
    | 6   | External Frame Backpack   | To Be Shipped   | $ 179.95   | $ 1079.70   |
    | 8   | Glacier Sun Glasses       | To Be Shipped   | $ 67.99    | $ 543.92    |
    | 3   | Padded Socks              | To Be Shipped   | $ 19.99    | $ 59.97     |
    | 10  | Hiking Boots              | To Be Shipped   | $ 109.90   | $ 1099.00   |
    | 12  | Back Country Shorts       | To Be Shipped   | $ 24.95    | $ 299.40    |
  And I should see the information bellow totally completed:
    | Product Total             | $ 3681.97   |
    | Sales Tax                 | $ 184.10    |
    | Shipping & Handling       | $ 5.00      |
    | Grand Total               | $ 3871.07   |

@maximize
Scenario: Placing an Order with Different Quantities (5, 1, 7, 15, 9, 3)
  When I add the following items to the order:
    | Quantity | Item                   |
    | 5        | 3 Person Dome Tent     |
    | 1        | External Frame Backpack|
    | 7        | Glacier Sun Glasses    |
    | 15       | Padded Socks           |
    | 9        | Hiking Boots           |
    | 3        | Back Country Shorts    |
  And I press "Place An Order"
  Then I should see the Place Order page
  And I should see the following order details:
    | Qty | Product Description       | Delivery Status | Unit Price | Total Price |
    | 5   | 3 Person Dome Tent        | To Be Shipped   | $ 299.99   | $ 1499.95   |
    | 1   | External Frame Backpack   | To Be Shipped   | $ 179.95   | $ 179.95    |
    | 7   | Glacier Sun Glasses       | To Be Shipped   | $ 67.99    | $ 475.93    |
    | 15  | Padded Socks              | To Be Shipped   | $ 19.99    | $ 299.85    |
    | 9   | Hiking Boots              | To Be Shipped   | $ 109.90   | $ 989.10    |
    | 3   | Back Country Shorts       | To Be Shipped   | $ 24.95    | $ 74.85     |
  And I should see the information bellow totally completed:
    | Product Total             | $ 3519.63   |
    | Sales Tax                 | $ 175.98    |
    | Shipping & Handling       | $ 5.00      |
    | Grand Total               | $ 3700.61   |

@maximize
Scenario: Placing an Order with Different Quantities (10, 3, 5, 2, 8, 6)
  When I add the following items to the order:
    | Quantity | Item                   |
    | 10       | 3 Person Dome Tent     |
    | 3        | External Frame Backpack|
    | 5        | Glacier Sun Glasses    |
    | 2        | Padded Socks           |
    | 8        | Hiking Boots           |
    | 6        | Back Country Shorts    |
  And I press "Place An Order"
  Then I should see the Place Order page
  And I should see the following order details:
    | Qty | Product Description       | Delivery Status | Unit Price | Total Price |
    | 10  | 3 Person Dome Tent        | To Be Shipped   | $ 299.99   | $ 2999.90   |
    | 3   | External Frame Backpack   | To Be Shipped   | $ 179.95   | $ 539.85    |
    | 5   | Glacier Sun Glasses       | To Be Shipped   | $ 67.99    | $ 339.95    |
    | 2   | Padded Socks              | To Be Shipped   | $ 19.99    | $ 39.98     |
    | 8   | Hiking Boots              | To Be Shipped   | $ 109.90   | $ 879.20    |
    | 6   | Back Country Shorts       | To Be Shipped   | $ 24.95    | $ 149.70    |
  And I should see the information bellow totally completed:
    | Product Total             | $ 4948.58   |
    | Sales Tax                 | $ 247.43    |
    | Shipping & Handling       | $ 5.00      |
    | Grand Total               | $ 5201.01   |

@maximize
Scenario: Placing an Order with Different Quantities (4, 8, 2, 10, 7, 5)
  When I add the following items to the order:
    | Quantity | Item                   |
    | 4        | 3 Person Dome Tent     |
    | 8        | External Frame Backpack|
    | 2        | Glacier Sun Glasses    |
    | 10       | Padded Socks           |
    | 7        | Hiking Boots           |
    | 5        | Back Country Shorts    |
  And I press "Place An Order"
  Then I should see the Place Order page
  And I should see the following order details:
    | Qty | Product Description       | Delivery Status | Unit Price | Total Price |
    | 4   | 3 Person Dome Tent        | To Be Shipped   | $ 299.99   | $ 1199.96   |
    | 8   | External Frame Backpack   | To Be Shipped   | $ 179.95   | $ 1439.60   |
    | 2   | Glacier Sun Glasses       | To Be Shipped   | $ 67.99    | $ 135.98    |
    | 10  | Padded Socks              | To Be Shipped   | $ 19.99    | $ 199.90    |
    | 7   | Hiking Boots              | To Be Shipped   | $ 109.90   | $ 769.30    |
    | 5   | Back Country Shorts       | To Be Shipped   | $ 24.95    | $ 124.75    |
  And I should see the information bellow totally completed:
    | Product Total             | $ 3869.49   |
    | Sales Tax                 | $ 193.47    |
    | Shipping & Handling       | $ 5.00      |
    | Grand Total               | $ 4067.96   |

@maximize
Scenario: Placing an Order with Different Quantities (7, 9, 4, 6, 12, 1)
  When I add the following items to the order:
    | Quantity | Item                   |
    | 7        | 3 Person Dome Tent     |
    | 9        | External Frame Backpack|
    | 4        | Glacier Sun Glasses    |
    | 6        | Padded Socks           |
    | 12       | Hiking Boots           |
    | 1        | Back Country Shorts    |
  And I press "Place An Order"
  Then I should see the Place Order page
  And I should see the following order details:
    | Qty | Product Description       | Delivery Status | Unit Price | Total Price |
    | 7   | 3 Person Dome Tent        | To Be Shipped   | $ 299.99   | $ 2099.93   |
    | 9   | External Frame Backpack   | To Be Shipped   | $ 179.95   | $ 1619.55   |
    | 4   | Glacier Sun Glasses       | To Be Shipped   | $ 67.99    | $ 271.96    |
    | 6   | Padded Socks              | To Be Shipped   | $ 19.99    | $ 119.94    |
    | 12  | Hiking Boots              | To Be Shipped   | $ 109.90   | $ 1318.80   |
    | 1   | Back Country Shorts       | To Be Shipped   | $ 24.95    | $ 24.95     |
  And I should see the information bellow totally completed:
    | Product Total             | $ 5455.13   |
    | Sales Tax                 | $ 272.76    |
    | Shipping & Handling       | $ 5.00      |
    | Grand Total               | $ 5732.89   |

@maximize
Scenario: Placing a Big Order of a Single Item (3 Person Dome Tent)
  When I add the following items to the order:
    | Quantity | Item                   |
    | 100      | 3 Person Dome Tent     |
  And I press "Place An Order"
  Then I should see the Place Order page
  And I should see the following order details:
    | Qty | Product Description       | Delivery Status | Unit Price | Total Price |
    | 100 | 3 Person Dome Tent        | To Be Shipped   | $ 299.99   | $ 29999.00  |
  And I should see the information bellow totally completed:
    | Product Total             | $ 29999.00  |
    | Sales Tax                 | $ 1499.95   |
    | Shipping & Handling       | $ 5.00      |
    | Grand Total               | $ 31503.95  |

@maximize
Scenario: Placing a Big Order of a Single Item (External Frame Backpack)
  When I add the following items to the order:
    | Quantity | Item                   |
    | 100      | External Frame Backpack|
  And I press "Place An Order"
  Then I should see the Place Order page
  And I should see the following order details:
    | Qty | Product Description       | Delivery Status | Unit Price | Total Price |
    | 100 | External Frame Backpack   | To Be Shipped   | $ 179.95   | $ 17995.00  |
  And I should see the information bellow totally completed:
    | Product Total             | $ 17995.00  |
    | Sales Tax                 | $ 899.75    |
    | Shipping & Handling       | $ 5.00      |
    | Grand Total               | $ 18899.75  |

@maximize
Scenario: Placing a Big Order of a Single Item (Glacier Sun Glasses)
  When I add the following items to the order:
    | Quantity | Item                   |
    | 100      | Glacier Sun Glasses    |
  And I press "Place An Order"
  Then I should see the Place Order page
  And I should see the following order details:
    | Qty | Product Description       | Delivery Status | Unit Price | Total Price |
    | 100 | Glacier Sun Glasses       | To Be Shipped   | $ 67.99    | $ 6799.00   |
  And I should see the information bellow totally completed:
    | Product Total             | $ 6799.00   |
    | Sales Tax                 | $ 339.95    |
    | Shipping & Handling       | $ 5.00      |
    | Grand Total               | $ 7143.95   |

@maximize
Scenario: Placing a Big Order of a Single Item (Padded Socks)
  When I add the following items to the order:
    | Quantity | Item                   |
    | 100      | Padded Socks           |
  And I press "Place An Order"
  Then I should see the Place Order page
  And I should see the following order details:
    | Qty | Product Description       | Delivery Status | Unit Price | Total Price |
    | 100 | Padded Socks              | To Be Shipped   | $ 19.99    | $ 1999.00   |
  And I should see the information bellow totally completed:
    | Product Total             | $ 1999.00   |
    | Sales Tax                 | $ 99.95    |
    | Shipping & Handling       | $ 5.00      |
    | Grand Total               | $ 2103.95   |

@maximize
Scenario: Placing a Big Order of a Single Item (Back Country Shorts)
  When I add the following items to the order:
    | Quantity | Item                   |
    | 100      | Back Country Shorts    |
  And I press "Place An Order"
  Then I should see the Place Order page
  And I should see the following order details:
    | Qty | Product Description       | Delivery Status | Unit Price | Total Price |
    | 100 | Back Country Shorts       | To Be Shipped   | $ 24.95    | $ 2495.00   |
  And I should see the information bellow totally completed:
    | Product Total             | $ 2495.00   |
    | Sales Tax                 | $ 124.75    |
    | Shipping & Handling       | $ 5.00      |
    | Grand Total               | $ 2624.75   |

@maximize
Scenario: Placing a Big Order of a Single Item (Hiking Boots)
  When I add the following items to the order:
    | Quantity | Item                   |
    | 100      | Hiking Boots           |
  And I press "Place An Order"
  Then I should see the Place Order page
  And I should see the following order details:
    | Qty | Product Description       | Delivery Status | Unit Price | Total Price |
    | 100 | Hiking Boots              | To Be Shipped   | $ 109.90   | $ 10990.00  |
  And I should see the information bellow totally completed:
    | Product Total             | $ 10990.00  |
    | Sales Tax                 | $ 549.50    |
    | Shipping & Handling       | $ 5.00      |
    | Grand Total               | $ 11544.50  |

