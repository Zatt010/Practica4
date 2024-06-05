Feature: GMO Online Catalog
  As a user
  I want to browse the GMO Online Catalog
  So that I can see product descriptions, photos, and order products

  Background:
    Given I am on the GMO homepage
    
  @maximize
  Scenario: Visiting the GMO Online Catalog from 0gmo
    When I click on "Enter GMO Online"
    Then I should see the GMO Online Catalog page
    And I should see "These are the items currently available through our online catalog"
    And I should see "<Item>" with price "<Price>"
    Examples:
      | Item                    | Price    |
      | 3 Person Dome Tent      | $ 299.99 |
      | External Frame Backpack | $ 179.95 |
      | Glacier Sun Glasses     | $ 67.99  |
      | Padded Socks            | $ 19.99  |
      | Hiking Boots            | $ 109.90 |
      | Back Country Shorts     | $ 24.95  |


