Feature: Resetting Order Quantity
  As a user
  I want to reset the order quantity to zero
  So that I can clear the form easily

  Background:
    Given 6I am on the GMO homepage
    When 6I click on "Enter GMO Online"

  @maximize
  Scenario: Resetting Order Quantity to Zero
    When I add 1 "3 Person Dome Tent" to the order
    And I press "Reset Form"
    Then the Order Quantity for "3 Person Dome Tent" should be 0