@regression
Feature: Application Functionality Test Suite

@smoke
Scenario: User accesses the application with valid email
Given the user is on the access page
When the user clicks on "Access with email" button
And the user enters "user@example.com" into "Email" field
And the user enters "123456" into "Access code" field
And the user clicks "Sign in" button
Then the system displays the dashboard screen

@smoke
Scenario: Homepage navigation and access button visibility
Given the user is on the homepage
When the page loads
Then the "access" button should be visible and clickable
And when the user hovers over the "access" button
Then a drawer appears with the option to open the "Customer Portal" tab

Scenario: Viewing help options and contact information
Given the user is on the help page
When the user clicks on a question
Then the answer should expand below the question

Scenario: Viewing contact options
Given the user is on the contact page
When the page loads
Then various contact options should be visible with phone numbers

Scenario: Error handling for empty email field
Given the user is on the access form
When the email field is empty and the user clicks "Sign in"
Then the system displays an error message "This field cannot be left blank"

Scenario: Error handling for incorrect access information
Given the user is on the access form
When the user enters "wrong@email.com" into "Email" field
And the user enters "wrongpass" into "Access code" field
And the user clicks "Sign in" button
Then the system displays an error message "Incorrect username or access code. Please try again!"

Scenario: Access page field visibility and interaction
Given the user is on the access page
When the page loads
Then the "Email" field should be visible with the label "Email" and a placeholder "Enter your email"
And the "access code" field should be visible with the label "access code" and an eye icon to toggle visibility

Scenario: Forgot access code functionality
Given the user is on the access page
When the user clicks on "Forgot access code?" link
Then the user should be redirected to the access code recovery page

Scenario: Lodge a complaint with valid details
Given the user is on the complaint form
When the page loads
Then the "Salutation" dropdown should contain options "Mr", "Mrs", "Ms", "Mdm"
And the user should be able to select any option
When the user enters "John" into "Given name" field
And the user enters "Doe" into "Surname" field
And the user checks the agreement checkbox
Then the "Submit" button should be enabled
When the user clicks "Submit"
Then the form should be validated and submitted