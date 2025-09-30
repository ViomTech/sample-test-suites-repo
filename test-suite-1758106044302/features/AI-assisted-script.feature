@regression
Feature: Banking Application Test Suite

@smoke
Scenario: View Credit Card Information
And click on "Wallet"
And check that screen contains "Credit cards"
And check that screen contains "...8439"
And check that screen contains "EXPIRY DATE"
And check that screen contains "RISHI SARASWAT"

@smoke
Scenario: Display Beneficiaries
And click on "Transfers"
And check that screen contains "Latest"
And check that screen contains initials in a circle
And check that screen contains "All beneficiaries"

@smoke
Scenario: User Login
And check that screen contains "Email"
And check that screen contains "Password"
And enter "user@example.com" into "Email field"
And enter "password123" into "Password field"
And check that button "Sign in" is enabled
And click on "Sign in"
And check that screen contains "Invalid credentials"

Scenario: View Current Account Balance
And check that screen contains "Current account"
And check that screen contains "Account number"
And click on "Eye icon"
And check that screen contains "Balance revealed"

Scenario: View Account Balance
And check that screen contains "Current account"
And check that screen contains "Visibility toggle"

Scenario: Expand and Hide Account Details
And click on "Wallet"
And click on "Eye icon"
And check that screen contains "Account details expanded or hidden"

Scenario: View Current Account Details
And click on "Wallet"
And check that screen contains "Current accounts"
And check that screen contains "2412391269940"
And check that screen contains "Default account"
And check that screen contains "Add new current account"

Scenario: Quick Transfer Button
And check that screen contains "Quick transfer"
And check that button "Quick transfer" is enabled

Scenario: Display Error Message on Invalid Login
And enter "wrong@example.com" into "Email field"
And enter "wrongpass" into "Password field"
And click on "Sign in"
And check that screen contains "Incorrect username or password. Please try again!"
