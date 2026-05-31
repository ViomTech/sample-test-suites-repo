Feature: POC Feature
@poc
Scenario: First scenario
  # Start typing steps below.
  And wait 10 secs
  And click "Login" with exact phrase
  And wait 15 secs
  And check that screen contains "Terms and Conditions" and save it as "flagtnc" and continue
  And wait 2 secs
  And if (flagtnc Equals true)
    And click "Continue"
  And endif
  And wait 5 secs
  And enter "64065598" into "National ID"
  And enter "uat123@123" into "Password"
  And click "Login"
  And wait 5 secs

@test
Scenario: test
And wait 5 secs
And click "Transfers" with exact phrase
And wait 2 secs
And click "Add beneficiary"
And wait 5 secs
