@regression
Feature: Banking Application Test Suite

@smoke
Scenario: User accesses the application with valid access information
Given the user is on the access page
When the user enters "validAccessCode" into "Access code" field
Then the "Access" button should be enabled

@smoke
Scenario: User accesses the application with invalid access information
Given the user is on the access page
When the user enters "invalidAccessCode" into "Access code" field
Then the error message "Your access details did not match" should appear

@smoke
Scenario: View Dashboard
Given the dashboard is visible
Then the label "Welcome to digibank" should be present
And the "Transfer" icon should be clickable
And the account balance should be displayed as "₹10,536.65"

Scenario: Fund Transfer with invalid amount
Given the Fund transfer screen with a selected payee is visible
When the user enters "invalidAmount" into "Amount" field
And the user taps on "Fund Transfer"
Then the error message "Please enter a valid amount." should appear

Scenario: Fund Transfer screen visibility
Given the Fund transfer screen is visible
Then the balance "₹10,536.65" should be displayed under "digiSavings"
And the "Remaining transfer limit ₹5,00,000.0" should be displayed
When the user taps on "Select payee"
Then the payee selection screen should be displayed

Scenario: Payee Selection screen validation
Given the payee selection screen is visible
Then a search input with placeholder "Enter VPA, payee name or mobile no." should be present
And the "Add new payee" button should be visible
And a list of existing payees should be displayed

Scenario: Payment Completion Confirmation
Given the Payment completed screen is visible
When the screen loads
Then the message "Payment completed!" should be displayed
And the label "From" should be visible with the text "AMIT GUPTA digiSavings amitgupta2201@dbs"
And the label "To" should be visible with the text "AMIT GUPTA 6591121309@icici"
And the label "Payment date" should be visible with the text "11 Sep 2025"
And the label "Reference ID" should be visible with the text "525408895796"
And the amount "₹1.25" should be displayed
When the user taps "DONE"
Then the app should navigate to the main screen

Scenario: Review Transfer Details
Given the Review transfer screen is visible
When the screen loads
Then the label "From" should be visible with the text "AMIT GUPTA digiSavings amitgupta2201@dbs"
And the label "To" should be visible with the text "AMIT GUPTA 6591121309@icici"
And the label "Payment date" should be visible with the text "11 Sep 2025"
And the amount "₹1.25" should be displayed
And the button "NEXT" should be visible and enabled