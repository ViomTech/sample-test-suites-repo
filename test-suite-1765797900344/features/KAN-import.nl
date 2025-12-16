@regression
Feature: Banking Application Test Suite

@smoke
Scenario: User accesses the application with valid access information
Given the access screen is visible
When the user enters a valid access code
Then the 'access' button should be enabled

@smoke
Scenario: View Dashboard
Given the user has access
When the user navigates to the dashboard
Then the label 'Welcome to digibank' should be present
And the 'Transfer' icon should be clickable
And the account balance should be displayed as '₹10,536.65'

@smoke
Scenario: Initiate Fund Transfer without Payee Selection
Given the Fund transfer screen is visible
When the user taps on 'Fund Transfer'
Then error message 'Please select a payee.' should appear

Scenario: Fund Transfer with Invalid Amount
Given the Fund transfer screen with a selected payee is visible
When the user enters '₹0.75' into the amount field
And the user taps on 'Fund Transfer'
Then error message 'Please enter a valid amount.' should appear

Scenario: Payee Selection Screen Verification
Given the payee selection screen is visible
Then a search input with placeholder 'Enter VPA, payee name or mobile no.' should be present
And the 'Add new payee' button should be visible
And a list of existing payees should be displayed

Scenario: Payment Completion Confirmation
Given the Payment completed screen is visible
When the screen loads
Then the message 'Payment completed!' should be displayed
And the label 'From' should be visible with the text 'AMIT GUPTA digiSavings amitgupta2201@dbs'
And the label 'To' should be visible with the text 'AMIT GUPTA 6591121309@icici'
And the label 'Payment date' should be visible with the text '11 Sep 2025'
And the label 'Reference ID' should be visible with the text '525408895796'
And the amount '₹1.25' should be displayed

Scenario: Review Transfer Details
Given the Review transfer screen is visible
When the screen loads
Then the label 'From' should be visible with the text 'AMIT GUPTA digiSavings amitgupta2201@dbs'
And the label 'To' should be visible with the text 'AMIT GUPTA 6591121309@icici'
And the label 'Payment date' should be visible with the text '11 Sep 2025'
And the amount '₹1.25' should be displayed
And the button 'NEXT' should be visible and enabled