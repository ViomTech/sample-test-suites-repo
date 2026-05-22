@regression
Feature: User Access and Payee Object Management

@smoke
Scenario: User accesses the application with valid access information
Given the user is on the access screen
When the user enters "valid_access_code" into "Access code" field
Then the access button must become active
And the system displays a partially masked mobile number

@smoke
Scenario: User receives error for incorrect access information
Given the user is on the access screen
When the user enters "incorrect_username" into "Username field"
And the user enters "incorrect_access_code" into "Access code field"
And the user clicks "Submit" button
Then the system shows a modal popup with the title "Your access details did not match"
And the message "We couldn’t log you in. Please check your username and access code, and try again."
And the modal popup includes a "TRY AGAIN" button and a close icon

Scenario: User exceeds maximum access attempts
Given the user is on the access screen
When the user enters "valid_access_code" into "Access code field" multiple times with incorrect username
Then the system must return a message "Too many attempts"

Scenario: User selects a payee from the payee list
Given the user is on the payee list screen
When the user selects a payee
Then the system should use the payee object structure to update the payee field

Scenario: User attempts to use an unavailable payee
Given the user is on the payee list
When the user selects a payee that has become unavailable
Then the user should return to the payee list with a message "Payee is unavailable."