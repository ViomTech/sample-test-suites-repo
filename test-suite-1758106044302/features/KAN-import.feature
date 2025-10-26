@regression
Feature: Wallet and Account Management Test Suite

@smoke
Scenario: User Login
And check that screen contains "Email"
And check that screen contains "Password"
And type "user@example.com" into "Email field"
And type "password123" into "Password field"
And check that button "Sign in" is enabled
And click "Sign in"
And Error: check that screen contains "Invalid credentials" if credentials are invalid

@smoke
Scenario: View Credit Card Information
And click "Wallet"
And check that screen contains "Credit cards"
And check that screen contains "...8439"
And check that screen contains "EXPIRY DATE"
And check that screen contains "RISHI SARASWAT"

@smoke
Scenario: Display Beneficiaries
And click "Transfers"
And check that screen contains "Latest"
And check that screen contains "initials in circle"
And check that screen contains "All beneficiaries"

@smoke
Scenario: View Current Account Balance
And check that screen contains "Current account"
And check that screen contains "account number"
And click "eye icon"
And check that screen contains "unmasked balance"

Scenario: View Account Balance
And check that screen contains "Current account"
And check that screen contains "visibility toggle"

Scenario: Expand and Hide Account Details
And click "Wallet"
And click "eye icon"
And check that screen contains "expanded or hidden account details"

Scenario: View Current Account Details
And click "Wallet"
And check that screen contains "Current accounts"
And check that screen contains "2412391269940"
And check that screen contains "default account marked"
And check that screen contains "option to add new account"

Scenario: Quick Transfer Button
And check that screen contains "Quick transfer"
And check that button "Quick transfer" is enabled

Scenario: View Account Balance
And check that screen contains "Current account"
And check that screen contains "visibility toggle"
