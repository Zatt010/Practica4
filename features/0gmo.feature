Feature: GMO Online Catalog
  As a user
  I want to browse the GMO Online Catalog
  So that I can see product descriptions, photos, and order products

  Background:
    Given I am on the GMO homepage
    
  @maximize
  Scenario: Visiting the GMO Online Catalog
    When I click on "Enter GMO Online"
    Then I should see the GMO Online Catalog page
    And I should see "These are the items currently available through our online catalog"
    And I should see "3 Person Dome Tent" with price "$ 299.99"
    And I should see "External Frame Backpack" with price "$ 179.95"
    And I should see "Glacier Sun Glasses" with price "$ 67.99"
    And I should see "Padded Socks" with price "$ 19.99"
    And I should see "Hiking Boots" with price "$ 109.90"
    And I should see "Back Country Shorts" with price "$ 24.95"

  Scenario: Viewing About the GMO Site
    When I click on "About the GMO Site"
    Then I should see the About the GMO Site page
    And I should see "This is a sample online commerce application. It is not real."
    And I should see "Green Mountain Outpost is a fictitious company."
    And I should see "For your privacy and security, DO NOT ENTER REAL BILLING OR SHIPPING INFORMATION"
    