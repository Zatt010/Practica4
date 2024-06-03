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
        | Name          | Address         | City      | State | Zip   | Phone      | E-mail               | Credit Card       | Card Number     | Expiration |
        | John Doe      | 123 Elm St      | Anytown   | NY    | 12345 | 555-1234   | john@example.com     | Visa              | 4111111111111111 | 12/95      |
        | Jane Smith    | 456 Oak Ave     | Othertown | CA    | 67890 | 555-5678   | jane@example.com     | MasterCard        | 5500000000000000 | 11/96      |
        | Bob Brown     | 789 Pine Rd     | Sometown  | TX    | 11223 | 555-9876   | bob@example.com      | American Express  | 340000000000000  | 10/97      |
        | Alice Green   | 321 Birch Blvd  | Newcity   | FL    | 54321 | 555-4321   | alice@example.com    | Visa              | 4111222233334444 | 01/98      |
        | Charlie White | 654 Cedar Lane  | Oldtown   | IL    | 98765 | 555-6789   | charlie@example.com  | MasterCard        | 5500111122223333 | 09/95      |
        | Dave Black    | 987 Spruce Ave  | Midville  | OH    | 33445 | 555-1235   | dave@example.com     | American Express  | 370011122233300  | 03/99      |
        | Eve Blue      | 135 Willow St   | Smalltown | NJ    | 55678 | 555-2345   | eve@example.com      | Visa              | 4111555566667777 | 07/94      |
        | Frank Yellow  | 246 Aspen Dr    | Bigcity   | MI    | 66789 | 555-3456   | frank@example.com    | MasterCard        | 5500444455556666 | 05/99      |
        | Grace Purple  | 357 Maple Cir   | Uptown    | PA    | 77890 | 555-4567   | grace@example.com    | American Express  | 370022233344400  | 08/98      |
        | Hank Orange   | 468 Oakwood Ct  | Downtown  | VA    | 88901 | 555-5679   | hank@example.com     | Visa              | 4111888899990000 | 04/99      |
        | Ivy Violet    | 579 Beech Rd    | Nearville | WA    | 99012 | 555-6780   | ivy@example.com      | MasterCard        | 5500666677778888 | 06/96      |
        | Jack Red      | 680 Cherry Ln   | Farville  | OR    | 10123 | 555-7891   | jack@example.com     | American Express  | 370033344455500  | 02/95      |
        | Kate Brown    | 791 Poplar Pl   | Middletown| CO    | 11234 | 555-8902   | kate@example.com     | Visa              | 4111999900001111 | 11/97      |


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
        Then I should get an <Exception>

        Examples:
        | Name       | Address         | City       | State | Zip    | Phone         | E-mail           | Credit Card    | Card Number   | Expiration | Exception                             |
        | J0hn Doe   | 123 Elm St      | Anytown    | NY    | 12345  | 555-1234      | john@example.com | Visa           | 4111111111111 | 12/25      | "Invalid name: numbers not allowed"  |
        | Jane Smith | 456 Oak Av3     | Othertown  | CA    | 67890  | 555-5678      | jane@example.com | MasterCard     | 5500000000000 | 11/26      | "Invalid address: numbers in street" |
        | Bob Brown  | 789 Pine Rd     | Some1town  | TX    | 11223  | 555-9876      | bob@example.com  | American Express | 3400000000000 | 10/27   | "Invalid city: numbers not allowed"  |
        | John Doe   | 123 Elm St      | Anytown    | NY1   | 12345  | 555-1234      | john@example.com | Visa           | 4111111111111 | 12/25      | "Invalid state: numbers not allowed" |
        | Jane Smith | 456 Oak Ave     | Othertown  | CA    | 6789A  | 555-5678      | jane@example.com | MasterCard     | 5500000000000 | 11/26      | "Invalid zip code: letters not allowed" |
        | Bob Brown  | 789 Pine Rd     | Sometown   | TX    | 11223  | 555-98X6      | bob@example.com  | American Express | 3400000000000 | 10/27   | "Invalid phone number: letters not allowed" |
        | John Doe   | 123 Elm St      | Anytown    | NY    | 12345  | 555-1234      | johnexample.com  | Visa           | 4111111111111 | 12/25      | "Invalid email: missing '@'"         |
        | Jane Smith | 456 Oak Ave     | Othertown  | CA    | 67890  | 555-5678      | jane@example.com | MasterCard     | 5500000000000 | 13/26      | "Invalid expiration date: month > 12"|
        | Bob Brown  | 789 Pine Rd     | Sometown   | TX    | 11223  | 555-9876      | bob@example.com  | MasterCard     | 123           | 10/27      | "Invalid card number: too short"     |

