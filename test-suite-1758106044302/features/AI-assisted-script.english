@regression
Feature: Banking Application Test Suite

@smoke
Scenario: View Credit Card Information
click on "Wallet"
check that screen contains "Credit cards"
check that screen contains "...8439"
check that screen contains "EXPIRY DATE"
check that screen contains "RISHI SARASWAT"

@smoke
Scenario: Display Beneficiaries
click on "Transfers"
check that screen contains "Latest"
check that screen contains initials in a circle
check that screen contains "All beneficiaries"

@smoke
Scenario: User Login
check that screen contains "Email"
check that screen contains "Password"
enter "user@example.com" into "Email field"
enter "password123" into "Password field"
check that button "Sign in" is enabled
click on "Sign in"
check that screen contains "Invalid credentials"

Scenario: View Current Account Balance
check that screen contains "Current account"
check that screen contains "Account number"
click on "Eye icon"
check that screen contains "Balance revealed"

Scenario: View Account Balance
check that screen contains "Current account"
check that screen contains "Visibility toggle"

Scenario: Expand and Hide Account Details
click on "Wallet"
click on "Eye icon"
check that screen contains "Account details expanded or hidden"

Scenario: View Current Account Details
click on "Wallet"
check that screen contains "Current accounts"
check that screen contains "2412391269940"
check that screen contains "Default account"
check that screen contains "Add new current account"

Scenario: Quick Transfer Button
check that screen contains "Quick transfer"
check that button "Quick transfer" is enabled

Scenario: Display Error Message on Invalid Login
enter "wrong@example.com" into "Email field"
enter "wrongpass" into "Password field"
click on "Sign in"
check that screen contains "Incorrect username or password. Please try again!"