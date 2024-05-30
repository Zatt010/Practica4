Feature: GMO Online Catalog Item Details
  As a user
  I want to view details of individual items
  So that I can see descriptions and prices of the products

  Background:
    Given I am on the GMO homepage
    When I click on "Enter GMO Online"

  @maximize
  Scenario: Viewing details of 3 Person Dome Tent
    When I click on "3 Person Dome Tent"
    Then I should see the item details page for "3 Person Dome Tent"
    And I should see the following details:
      | Detail                                        |
      | Our best 3 person backpack dome tent          |
      | Unit Price: $ 299.99                          |
      | Item Number: 1000                             |
  @maximize
  Scenario: Viewing details of External Frame Backpack
    When I click on "External Frame Backpack"
    Then I should see the item details page for "External Frame Backpack"
    And I should see the following details:
      | Detail                                        |
      | Our most popular external frame backpack      |
      | Unit Price: $ 179.95                          |
      | Item Number: 1001                             |
  @maximize
  Scenario: Viewing details of Glacier Sun Glasses
    When I click on "Glacier Sun Glasses"
    Then I should see the item details page for "Glacier Sun Glasses"
    And I should see the following details:
      | Detail                                        |
      | Our best glacier sun glasses will protect you on your next expedition or when you hit the slopes. |
      | Unit Price: $ 67.99                           |
      | Item Number: 1002                             |

  @maximize
  Scenario: Viewing details of Padded Socks
    When I click on "Padded Socks"
    Then I should see the item details page for "Padded Socks"
    And I should see the following details:
      | Detail                                        |
      | Our favorite padded socks will make your next back country trek easier on your feet. |
      | Unit Price: $ 19.99                           |
      | Item Number: 1003                             |

  @maximize
  Scenario: Viewing details of Hiking Boots
    When I click on "Hiking Boots"
    Then I should see the item details page for "Hiking Boots"
    And I should see the following details:
      | Detail                                        |
      | Climb any mountain with our PermaDry all leather hiking boots. |
      | Unit Price: $ 109.90                          |
      | Item Number: 1004                             |

  @maximize
  Scenario: Viewing details of Back Country Shorts
    When I click on "Back Country Shorts"
    Then I should see the item details page for "Back Country Shorts"
    And I should see the following details:
      | Detail                                        |
      | Our quick drying shorts are a customer favorite. Perfect for a day of any outdoor activity or just lounging around the camp. |
      | Unit Price: $ 24.95                           |
      | Item Number: 1005                             |

