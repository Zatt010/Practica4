Feature: Placing an Order with Multiple Items
  As a user
  I want to place an order with multiple items
  So that I can verify the total price of my order

  Background:
    Given I am on the GMO homepage
    When I click on "Enter GMO Online"

  @maximize
  Scenario: Adding 3 Person Dome Tent and External Frame Backpack
    When I add 1 "3 Person Dome Tent" to the order
    And I add 1 "External Frame Backpack" to the order
    And I press "Place An Order"
    Then I should see the Place Order page
    And the Product Total should be "$ 479.94"

  @maximize
  Scenario: Adding 3 Person Dome Tent and Glacier Sun Glasses
    When I add 1 "3 Person Dome Tent" to the order
    And I add 1 "Glacier Sun Glasses" to the order
    And I press "Place An Order"
    Then I should see the Place Order page
    And the Product Total should be "$ 367.98"

  @maximize
  Scenario: Adding 3 Person Dome Tent and Padded Socks
    When I add 1 "3 Person Dome Tent" to the order
    And I add 1 "Padded Socks" to the order
    And I press "Place An Order"
    Then I should see the Place Order page
    And the Product Total should be "$ 319.98"

  @maximize
  Scenario: Adding 3 Person Dome Tent and Hiking Boots
    When I add 1 "3 Person Dome Tent" to the order
    And I add 1 "Hiking Boots" to the order
    And I press "Place An Order"
    Then I should see the Place Order page
    And the Product Total should be "$ 409.89"

  @maximize
  Scenario: Adding 3 Person Dome Tent and Back Country Shorts
    When I add 1 "3 Person Dome Tent" to the order
    And I add 1 "Back Country Shorts" to the order
    And I press "Place An Order"
    Then I should see the Place Order page
    And the Product Total should be "$ 324.94"