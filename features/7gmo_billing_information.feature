Feature: Fill the billing information form
  As a user
  I want to put my information in the form
  So that I can pay for the products I am trying to buy

  Background:
    Given I am on the GMO homepage
    And I click on "Enter GMO Online"
    And I add 1 "3 Person Dome Tent" to the order
    And I press "Place An Order"
    And I press "Proceed with order"

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
        And I press "Same As Bill" checkbox
        And I press "Place The Order"
        Then I should see the OnLine Store Receipt page

        Examples:
            | Name          | Address         | City      | State | Zip   | Phone         | E-mail               | Credit Card       | Card Number     | Expiration |
            | John Doe      | 123 Elm St      | Anytown   | NY    | 12345 | 555-123-1234  | john@example.com     | Visa              | 4111111111111111 | 12/95      |
            | Jane Smith    | 456 Oak Ave     | Othertown | CA    | 67890 | 555-567-5678  | jane@example.com     | MasterCard        | 5500000000000000 | 11/96      |
            | Bob Brown     | 789 Pine Rd     | Sometown  | TX    | 11223 | 555-987-9876  | bob@example.com      | American Express  | 340000000000000  | 10/97      |



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
        And I press "Same As Bill" checkbox
        And I press "Place The Order"
        Then I should get an <Alert> alert

        Examples:
            | Name       | Address        | City      | State | Zip    | Phone         | E-mail           | Credit Card       | Card Number     | Expiration | Alert                        |
            |            | 123 Elm St      | Anytown   | NY    | 12345 | 555-123-1234  | john@example.com | Visa              | 4111222233334444 | 12/95      | "This is a required field."     |
            | Jane Smith |                 | Othertown | CA    | 67890 | 555-567-5678  | jane@example.com | MasterCard        | 5500111122223333 | 11/96      | "This is a required field."     |
            | Bob Brown  | 789 Pine Rd     | Sometown  |       | 11223 | 555-987-9876  | bob@example.com  | American Express  | 340022233344400  | 10/97      | "This is a required field."       |
            | John Doe   | 123 Elm St      | Anytown   | NY    |       | 555-123-1234  | john@example.com | Visa              | 4111333344445555 | 12/95      | "Please enter a valid zip code in this field."         |
            | Jane Smith | 456 Oak Ave     | Othertown | CA    | 67890 |               | jane@example.com | MasterCard        | 5500222333444000 | 11/96      | "This is a required field."       |
            | Bob Brown  | 789 Pine Rd     | Sometown  | TX    | 11223 | 555-987-9876  |                  | American Express  | 340033344455500  | 10/97      | "This is a required field."       |
            | Jane Smith | 456 Oak Ave     | Othertown | CA    | 67890 | 555-567-5678  | jane@example.com | MasterCard        |                 | 11/96      | "Card Number field is required" |
            | Bob Brown  | 789 Pine Rd     | Sometown  | TX    | 11223 | 555-987-9876  | bob@example.com  | American Express  | 340044455566600  |            | "Expiration field is required"  |


    Scenario Outline: Filling billing information with incorrect information
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
        And I press "Same As Bill" checkbox
        And I press "Place The Order"
        Then I should get an <Exception>

        Examples:
            | Name       | Address         | City       | State | Zip    | Phone         | E-mail           | Credit Card    | Card Number   | Expiration | Exception                             |
            | J0hn Doe   | 123 Elm St      | Anytown    | NY    | 12345 | 555-123-1234  | john@example.com | Visa              | 4111222233334444  | 12/95      | "Invalid name: numbers not allowed"    |
            | Jane Smith | 456 Oak Av3     | Othertown  | CA    | 67890 | 555-567-5678  | jane@example.com | MasterCard        | 5500111122223333  | 11/96      | "Invalid address: numbers in street"   |
            | Bob Brown  | 789 Pine Rd     | Some1town  | TX    | 11223 | 555-987-9876  | bob@example.com  | American Express  | 340022233344400   | 10/97      | "Invalid city: numbers not allowed"    |
            | John Doe   | 123 Elm St      | Anytown    | NY1   | 12345 | 555-123-1234  | john@example.com | Visa              | 4111333344445555  | 12/95      | "Invalid state: numbers not allowed"   |
            | Jane Smith | 456 Oak Ave     | Othertown  | CA    | 6789A | 555-567-5678  | jane@example.com | MasterCard        | 5500222333444000  | 11/96      | "Invalid zip code: letters not allowed" |
            | Bob Brown  | 789 Pine Rd     | Sometown   | TX    | 11223 | 555-987-9876  | bob@example.com  | American Express  | 340033344455500   | 10/97      | "Invalid phone number: letters not allowed" |
            | John Doe   | 123 Elm St      | Anytown    | NY    | 12345 | 555-123-1234  | johnexample.com  | Visa              | 4111444455556666  | 12/95      | "Invalid email: missing '@'"           |
            | Jane Smith | 456 Oak Ave     | Othertown  | CA    | 67890 | 555-567-5678  | jane@example.com | MasterCard        | 5500333444555000  | 11/96      | "Invalid expiration date: month > 12"  |
            | Bob Brown  | 789 Pine Rd     | Sometown   | TX    | 11223 | 555-987-9876  | bob@example.com  | MasterCard        | 5500444455556666  | 10/97      | "Invalid card number: too short"       |

