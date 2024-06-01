Feature: GMO Online Catalog Item Details
  As a user
  I want to view details of individual items
  So that I can see descriptions and prices of the products

  Background:
    Given I am on the GMO Catalog Homepage

  @maximize
  Scenario Outline: Viewing details of different items
    When I click on the item "<Item>"
    Then I should see the description "<Description>"

    Examples: 
      | Item                   | Description                                                                                                        | Price    | ItemNumber |
      | 3 Person Dome Tent     | Our best 3 person backpack dome tent                                                                               | $ 299.99 | 1000       |
      | External Frame Backpack| Our most popular external frame backpack                                                                           | $ 179.95 | 1001       |
      | Glacier Sun Glasses    | Our best glacier sun glasses will protect you on your next expedition or when you hit the slopes.                  | $ 67.99  | 1002       |
      | Padded Socks           | Our favorite padded socks will make your next back country trek easier on your feet.                               | $ 19.99  | 1003       |
      | Hiking Boots           | Climb any mountain with our PermaDry all leather hiking boots.                                                     | $ 109.90 | 1004       |
      | Back Country Shorts    | Our quick drying shorts are a customer favorite. Perfect for a day of any outdoor activity or just lounging around | $ 24.95  | 1005       |
