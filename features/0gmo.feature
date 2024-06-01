Feature: GMO Online Catalog
  As a user
  I want to browse the GMO Online Catalog
  So that I can see product descriptions, photos, and order products

  Background:
    Given 0I am on the GMO homepage
    
  @maximize
  Scenario: Visiting the GMO Online Catalog from 0gmo
    When 0I click on "Enter GMO Online"
    Then 0I should see the GMO Online Catalog page
    And 0I should see "These are the items currently available through our online catalog"
    And 0I should see "3 Person Dome Tent" with price "$ 299.99"
    And 0I should see "External Frame Backpack" with price "$ 179.95"
    And 0I should see "Glacier Sun Glasses" with price "$ 67.99"
    And 0I should see "Padded Socks" with price "$ 19.99"
    And 0I should see "Hiking Boots" with price "$ 109.90"
    And 0I should see "Back Country Shorts" with price "$ 24.95"
