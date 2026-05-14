@regression
Feature: User Assistance and Navigation

@smoke
Scenario: User views help options and expands a question
Given the user is on the help page
When the user clicks on a question
Then the answer should expand below the question

@smoke
Scenario: User views contact information
Given the user is on the contact page
When the page loads
Then various contact options should be visible with phone numbers

@smoke
Scenario: User navigates the homepage
Given the user is on the homepage
When the page loads
Then the "access" button should be visible and clickable

Scenario: User opens Customer Portal from access button
Given the "access" button on the homepage is clickable and enabled
When the user hovers over the "access" button
Then a drawer must appear to give the option to open the tab for "Customer Portal"

@smoke
Scenario: User accesses the portal using email
Given the user is on the access page
When the page loads
Then the "access with email" button should be visible and clickable

Scenario: User submits an empty email field
Given the access form is displayed
When the user leaves the "Email" field empty and tries to submit
Then the error message "This field cannot be left blank" should appear

Scenario: User submits incorrect access information
Given the access form is displayed
When the user enters "wrong@email.com" into "Email" field
And the user enters "wrongpass" into "access code" field
Then the error message "Incorrect username or access code. Please try again!" should appear

Scenario: User clicks on "Forgot access code?" link
Given the user is on the access page
When the user clicks on the "Forgot access code?" link
Then the user should be redirected to the access code recovery page

Scenario: User clicks on "Help" link
Given the user is on the access page
When the user clicks on the "Help" link
Then the user should be directed to the help section

Scenario: User lodges a complaint
Given the complaint form is displayed
When the page loads
Then the "Salutation" dropdown should contain options "Mr", "Mrs", "Ms", "Mdm" and the user should be able to select either of them

Scenario: User enters details in complaint form
Given the complaint form is displayed
When the user enters "John" into "Given name" field
And the user enters "Doe" into "Surname" field
Then the input should be accepted

Scenario: User checks agreement checkbox
Given the complaint form is displayed
When the user checks the agreement checkbox
Then the "Submit" button should be enabled

Scenario: User submits the complaint form
Given the complaint form is displayed
When the user clicks "Submit"
Then the form should be validated and submitted