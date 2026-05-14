Feature: New feature
@order-placement
Scenario: First scenario
  # Start typing steps below.
  #click on the element to the right of "User ID"
  #enter "mc_rm"
  And enter "mc_rm" into field on the right of "User ID"
  #click on the element to the right of "Password"
  #enter "mcrm2026"
  And enter "mcrm2026" into field on the right of "Password"
  And click "SIGN IN"
  And wait 3 sec
  And click "Search" with exact phrase
  And click "RESET" with exact phrase
  And wait 20 sec
  