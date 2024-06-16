Feature: Resetting Order Quantity
  As a user
  I want to reset the order quantity to zero
  So that I can clear the form easily

  Background:
    Given I am on the GMO homepage
    When I click on "Enter GMO Online"

@maximize
Scenario Outline: Resetting Order Quantity to Zero
  When I add 1 "<Product>" to the order
  And I press "Reset Form"
  Then the Order Quantity for "<Product>" should be 0

  Examples:
    | Product             |
    | 3 Person Dome Tent  |
    | External Frame Backpack |
    | Glacier Sun Glasses |
    | Padded Socks        |
    | Hiking Boots        |
    | Back Country Shorts |
