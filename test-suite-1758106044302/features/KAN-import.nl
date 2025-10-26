@regression
Feature: Wallet and Account Management Test Suite

@smoke
Scenario: User Login
check that screen contains "Email"
check that screen contains "Password"
enter "user@example.com" into "Email field"
enter "password123" into "Password field"
check that button "Sign in" is enabled
click on "Sign in"
check that screen contains "Invalid credentials" if credentials are invalid

@smoke
Scenario: View Credit Card Information
click on "Wallet" button
check that screen contains "Credit cards"
check that screen contains "...8439"
check that screen contains "EXPIRY DATE"
check that screen contains "RISHI SARASWAT"

@smoke
Scenario: Display Beneficiaries
click on "Transfers" button
check that screen contains "Latest"
check that screen contains "initials in circle"
check that screen contains "All beneficiaries"

@smoke
Scenario: View Current Account Balance
check that screen contains "Current account"
check that screen contains "account number"
click on "eye icon"
check that screen contains "unmasked balance"

Scenario: View Account Balance
check that screen contains "Current account"
check that screen contains "visibility toggle"

Scenario: Expand and Hide Account Details
click on "Wallet" button
click on "eye icon" in "current accounts section"
check that screen contains "expanded or hidden account details"

Scenario: View Current Account Details
click on "Wallet" button
check that screen contains "Current accounts"
check that screen contains "2412391269940"
check that screen contains "default account marked"
check that screen contains "option to add new account"

Scenario: Quick Transfer Button
check that screen contains "Quick transfer"
check that button "Quick transfer" is enabled

Scenario: View Account Balance
check that screen contains "Current account"
check that screen contains "visibility toggle"