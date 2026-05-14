@regression
Feature: Application Test Suite

@smoke
Scenario: User accesses the application with valid email
Given the user is on the access page
When the user clicks on "Access with email" button
And the user enters "user@example.com" into "Email" field
And the user enters "123456" into "Access code" field
And the user clicks "Sign in" button
Then the system displays the dashboard screen

@smoke
Scenario: Homepage access button functionality
Given the user is on the homepage
When the page loads
Then the "access" button should be visible and clickable

Scenario: Help page question expansion
Given the user is on the help page
When the user clicks on a question
Then the answer should expand below the question

Scenario: Contact page visibility
Given the user is on the contact page
When the page loads
Then various contact options should be visible with phone numbers

Scenario: Homepage access button drawer functionality
Given the user is on the homepage
When the user hovers or clicks on the "access" button
Then a drawer appears with the option to open the tab for "Customer Portal"

Scenario: Access page form validation - empty email
Given the user is on the access form
When the email field is empty
And the user tries to submit
Then an error message "This field cannot be left blank" should appear

Scenario: Access page form validation - incorrect information
Given the user is on the access form
When incorrect access information is entered
Then an error message "Incorrect username or access code. Please try again!" should appear

Scenario: Access code recovery link
Given the user is on the access page
When the "Forgot access code?" link is clicked
Then the user should be redirected to the access code recovery page

Scenario: Lodge a complaint form salutation selection
Given the user is on the complaint form page
When the page loads
Then the "Salutation" dropdown should contain options "Mr", "Mrs", "Ms", "Mdm"

Scenario: Lodge a complaint form input acceptance
Given the user is on the complaint form
When the user enters text into "Given name" and "Surname" fields
Then the input should be accepted

Scenario: Lodge a complaint form submission
Given the user is on the complaint page
When the user checks the agreement checkbox
And the user clicks "Submit"
Then the form should be validated and submitted