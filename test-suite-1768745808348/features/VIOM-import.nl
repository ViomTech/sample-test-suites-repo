@regression
Feature: Access Verification for Digibank Application

@smoke
Scenario: Verify access screen elements on app launch
Given the app is launched
When the access screen is displayed
Then the "App logo" is visible
And the "Masked user identifier" is visible
And the "Access code" input field is visible
And the "Access button" is disabled
And the "Trouble logging in?" link is visible
And the "Not you?" option is visible
And the "Biometric access" icon is visible if supported by the device

@smoke
Scenario: Enable access button with valid access code
Given the user is on the access page
And the "Access code" field is empty
When the user enters "123456" into the "Access code" field
Then the "Access button" is enabled

Scenario: Block access action with empty access code field
Given the user is on the access page
And the "Access code" field is empty
When the user clicks on the "Access" button
Then the access action must be blocked

Scenario: Access verification with valid access information
Given the user is on the access page
And the user enters "validuser" into the "Masked user identifier" field
And the user enters "validaccesscode" into the "Access code" field
When the user clicks on the "Access" button
Then the system verifies the access
And navigates to the post-access landing screen

Scenario: Handle invalid access information
Given the user is on the access page
And the user enters "invaliduser" into the "Masked user identifier" field
And the user enters "invalidaccesscode" into the "Access code" field
When the user clicks on the "Access" button
Then access verification must fail
And an error modal is displayed

Scenario: Error modal content verification
Given access verification fails
When the error modal is displayed
Then the modal contains the title "Your access details did not match"
And a description explaining access failure
And a "TRY AGAIN" primary action
And a "Close (X)" icon

Scenario: Error modal behavior
Given the error modal is displayed
When it is visible
Then background interactions must be disabled

Scenario: Retry access flow from error modal
Given the error modal is displayed
When the user taps on "TRY AGAIN"
Then the modal must close
And the "Access code" field is cleared
And focus returns to the "Access code" field

Scenario: Dismiss error modal
Given the error modal is displayed
When the user taps on the "Close (X)" icon
Then the modal must close
And the user remains on the access screen

Scenario: Biometric access verification success
Given biometric access verification is enabled on the device
And the user has opted in
When the user taps on the "Biometric access" icon
Then the OS biometric prompt is displayed
And the user is logged in successfully

Scenario: Biometric access verification failure
Given biometric access verification fails
When verification is rejected
Then the user remains on the access screen

Scenario: Biometric option visibility
Given biometric access verification is unavailable or locked
When the access screen is displayed
Then the biometric option is hidden or disabled

Scenario: "Not you?" flow
Given the access screen is displayed
When the user taps on "Not you?"
Then the current user context is cleared
And the user is redirected to the user selection screen

Scenario: "Trouble logging in?" flow
Given the access screen is displayed
When the user taps on "Trouble logging in?"
Then the access code recovery flow is initiated

Scenario: Data protection on consecutive failed attempts
Given consecutive failed access attempts occur
When the configured threshold is reached
Then additional data protection controls are applied

Scenario: Handle network and system errors
Given there is no network connectivity
When the user attempts login
Then a network error message is shown

Scenario: Service unavailability handling
Given access verification services are unavailable
When access is attempted
Then a generic service-unavailable message is displayed

Scenario: Accessibility of access screen
Given assistive technologies are enabled
When the access screen is used
Then all interactive elements must be accessible

Scenario: Audit and telemetry of access attempts
Given an access attempt occurs
When the attempt completes
Then an audit event is recorded without sensitive data