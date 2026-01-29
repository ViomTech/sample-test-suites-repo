@regression
Feature: Banking Application Test Suite

@smoke
Scenario: User accesses the application with valid access information
Given the user is on the access screen
When the user enters a valid access code into the "Access code" field
Then the "access" button should be enabled

@smoke
Scenario: Dashboard visibility
Given the user is on the dashboard
Then the label "Welcome to digibank" should be present
And the "Transfer" icon should be clickable
And the account balance should be displayed as "₹10,536.65"

Scenario: Fund transfer with invalid amount
Given the Fund transfer screen with a selected payee is visible
When the user enters "₹0.75" into the "Amount" field
And the user taps on "Fund Transfer"
Then error message "Please enter a valid amount." should appear

Scenario: Fund transfer with no payee selected
Given the Fund transfer screen is visible
When the user taps on "Fund Transfer"
Then error message "Please select a payee." should appear

Scenario: Payee selection screen visibility
Given the payee selection screen is visible
Then a search input with placeholder "Enter VPA, payee name or mobile no." should be present
And the "Add new payee" button should be visible
And a list of existing payees should be displayed

Scenario: Payment completion confirmation
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

Scenario: Review transfer details
Given the Review transfer screen is visible
When the screen loads
Then the label "From" should be visible with the text "AMIT GUPTA digiSavings amitgupta2201@dbs"
And the label "To" should be visible with the text "AMIT GUPTA 6591121309@icici"
And the label "Payment date" should be visible with the text "11 Sep 2025"
And the amount "₹1.25" should be displayed
And the button "NEXT" should be visible and enabled