@regression
Feature: Application User Interaction

@smoke
Scenario: User accesses the portal with valid email
Given the user is on the access page
When the user clicks on "Access with email" button
And the user enters "valid.user@example.com" into "Email" field
And the user enters "validaccesscode" into "Access code" field
And the user clicks "Sign in" button
Then the system displays the dashboard screen

@smoke
Scenario: Navigate homepage to open Customer Portal
Given the user is on the homepage
When the user clicks on "access" button
Then a drawer appears with the option to open the tab for "Customer Portal"

Scenario: View help options and contact information
Given the user is on the help page
When the user clicks a question
Then the answer should expand below the question

Scenario: View contact options
Given the user is on the contact page
When the page loads
Then various contact options should be visible with phone numbers

Scenario: Error message when email field is empty
Given the user is on the access page
When the email field is empty
And the user clicks "Sign in" button
Then the error message "This field cannot be left blank" should appear

Scenario: Error message for incorrect access information
Given the user is on the access page
When the user enters "invalid.user@example.com" into "Email" field
And the user enters "wrongaccesscode" into "Access code" field
And the user clicks "Sign in" button
Then the error message "Incorrect username or access code. Please try again!" should appear

Scenario: Lodge a complaint
Given the user is on the complaint form
When the page loads
Then the "Salutation" dropdown should contain options "Mr", "Mrs", "Ms", "Mdm"
And the user should be able to select either of them

Scenario: Submit complaint form with agreement
Given the user is on the complaint form
When the user enters text into "Given name" field
And the user enters text into "Surname" field
And the user checks the agreement checkbox
Then the "Submit" button should be enabled
And when the user clicks "Submit", the form should be validated and submitted