Feature: Fill the billing information form
    As a user
    I want to put my information on in the form
    So that I can pay the the products I am trying to buy

    Background:
        Given I am on the GMO homepage
        And I click on "Enter GMO Online"
        And I set the order quantity of "3 Person Dome Tent" to 1
        And click on "Place An Order"
        And click on "Proceed with order"


    Scenario Outline: Filling billing information correctly
        When I input <Name> in the "name field"
        And I input <Address> in the "address field"
        And I input <City> in the "city field"
        And I input <State> in the "state field"
        And I input <Zip> in the "zip field"
        And I input <Phone> in the "phone field"
        And I input <E-mail> in the "email field"
        And I select <Credit Card> from the "credit card type dropdown"
        And I input <Card Number> in the "card number field"
        And I input <Expiration> in the "expiration date field"
        Then I should move to "Online store receipt"

        Examples:
        | Name       | Address        | City     | State | Zip    | Phone       | E-mail           | Credit Card    | Card Number   | Expiration |
        | John Doe   | 123 Elm St     | Anytown  | NY    | 12345  | 555-1234    | john@example.com | Visa           | 4111111111111 | 12/25      |
        | Jane Smith | 456 Oak Ave    | Othertown| CA    | 67890  | 555-5678    | jane@example.com | MasterCard     | 5500000000000 | 11/26      |
        | Bob Brown  | 789 Pine Rd    | Sometown | TX    | 11223  | 555-9876    | bob@example.com  | American Express | 3400000000000 | 10/27      |

    Scenario Outline: Filling billing information with an empty field
        When I input <Name> in the "name field"
        And I input <Address> in the "address field"
        And I input <City> in the "city field"
        And I input <State> in the "state field"
        And I input <Zip> in the "zip field"
        And I input <Phone> in the "phone field"
        And I input <E-mail> in the "email field"
        And I select <Credit Card> from the "credit card type dropdown"
        And I input <Card Number> in the "card number field"
        And I input <Expiration> in the "expiration date field"
        Then I should get an <Exception>

        Examples:
        | Name       | Address        | City     | State | Zip    | Phone       | E-mail           | Credit Card    | Card Number   | Expiration | Exception                      |
        |            | 123 Elm St     | Anytown  | NY    | 12345  | 555-1234    | john@example.com | Visa           | 4111111111111 | 12/25      | "Name field is required"      |
        | Jane Smith |                | Othertown| CA    | 67890  | 555-5678    | jane@example.com | MasterCard     | 5500000000000 | 11/26      | "Address field is required"   |
        | Bob Brown  | 789 Pine Rd    | Sometown |       | 11223  | 555-9876    | bob@example.com  | American Express | 3400000000000 | 10/27    | "State field is required"     |
        | John Doe   | 123 Elm St     | Anytown  | NY    |        | 555-1234    | john@example.com | Visa           | 4111111111111 | 12/25      | "Zip field is required"       |
        | Jane Smith | 456 Oak Ave    | Othertown| CA    | 67890  |             | jane@example.com | MasterCard     | 5500000000000 | 11/26      | "Phone field is required"     |
        | Bob Brown  | 789 Pine Rd    | Sometown | TX    | 11223  | 555-9876    |                  | American Express | 3400000000000 | 10/27    | "Email field is required"     |
        | John Doe   | 123 Elm St     | Anytown  | NY    | 12345  | 555-1234    | john@example.com |                | 4111111111111 | 12/25      | "Credit Card field is required"|
        | Jane Smith | 456 Oak Ave    | Othertown| CA    | 67890  | 555-5678    | jane@example.com | MasterCard     |               | 11/26      | "Card Number field is required"|
        | Bob Brown  | 789 Pine Rd    | Sometown | TX    | 11223  | 555-9876    | bob@example.com  | American Express | 3400000000000 |          | "Expiration field is required"|

        