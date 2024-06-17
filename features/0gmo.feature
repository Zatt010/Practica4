Feature: GMO Online Catalog
  As a user
  I want to browse the GMO Online Catalog
  So that I can see product descriptions, photos, and order products

  Background:
    Given I am on the GMO homepage
    
  @maximize
  Scenario: Visiting the GMO Online Catalog from 0gmo
    When I click on "Enter GMO Online"
    Then I should see "These are the items currently available through our online catalog"
    And I should see "<Item>" with price "<Price>"
    Examples:
      | Item                    | Price    |
      | 3 Person Dome Tent      | $ 299.99 |
      | External Frame Backpack | $ 179.95 |
      | Glacier Sun Glasses     | $ 67.99  |
      | Padded Socks            | $ 19.99  |
      | Hiking Boots            | $ 109.90 |
      | Back Country Shorts     | $ 24.95  |

  Scenario: Viewing About the GMO Site
    When I click on "About the GMO Site"
    Then I should see the About the GMO Site page
    And I should see the text "This is a sample online commerce application. It is not real."
    And I should see the text "Green Mountain Outpost is a fictitious company."
    And I should see the privacy and security warning


  Scenario: Verifying Browser Test Page contents
    When I press "Browser Test Page"
    Then I should see "All Browsers Are Not Created Equal"
    And I should see the following browser table contents:
      | Internet Explorer 3.0        |
      | Netscape Navigator 3.0       |
    And I should see the following elements:
      | Blinking Text               |
      | dot bullets                 |
      | circle bullets              |
      | square bullets              |
    And I should see the following elements in the side table:
      | Colored Horizontal Rules    |
      | Definition Text Style       |
      | Trademarks are important    |
      | Table Properties            |
