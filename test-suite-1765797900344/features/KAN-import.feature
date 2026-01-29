@regression
Feature: Banking Application Test Suite

@smoke
Scenario: User accesses the application with valid access information
And the user is on the access screen
And type "the user enters a valid access code into" into "Access code with id as access"
And check that button "that" is enabled

@smoke
Scenario: Dashboard visibility
And the user is on the dashboard
And check that screen contains "Welcome to digibank"
And check that button "Transfer" is enabled
And the account balance should be displayed as "₹10,536.65"

Scenario: Fund transfer with invalid amount
And check that screen contains "Fund transfer screen with a selected payee"
And type "₹0.75" into "Amount"
And click "Fund Transfer"
And check that screen contains "Please enter a valid amount."

Scenario: Fund transfer with no payee selected
And check that screen contains "Fund transfer"
And click "Fund Transfer"
And check that screen contains "Please select a payee."

Scenario: Payee selection screen visibility
And check that screen contains "payee selection"
And check that screen contains "Enter VPA, payee name or mobile no."
And check that button "Add new payee" is enabled
And a list of existing payees should be displayed

Scenario: Payment completion confirmation
And check that screen contains "Payment completed"
And the screen loads
And check that screen contains "Payment completed!"
And check that screen contains "AMIT GUPTA digiSavings amitgupta2201@dbs"
And check that screen contains "AMIT GUPTA 6591121309@icici"
And check that screen contains "11 Sep 2025"
And check that screen contains "525408895796"
And check that screen contains "₹1.25"
And click "DONE"
And the app should navigate to the main screen

Scenario: Review transfer details
And check that screen contains "Review transfer"
And the screen loads
And check that screen contains "AMIT GUPTA digiSavings amitgupta2201@dbs"
And check that screen contains "AMIT GUPTA 6591121309@icici"
And check that screen contains "11 Sep 2025"
And check that screen contains "₹1.25"
And check that button "the" is enabled