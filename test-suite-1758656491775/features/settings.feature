@regression
Feature: Settings Feature

  Scenario: Testing Mobile Settings app
  And wait 5 secs
  And click "Search Settings"
  And wait 5 sec
  And enter "Network & internet"
  And wait 5 sec
  And click on the 2nd "Network & internet"
  And wait 5 sec
  And click "Internet"
  And wait 5 sec
  And click "Add network"
  And wait 5 sec
  And enter "new test" into "Enter the SSID"
  And wait 5 sec
  And click "Save"
  And wait 5 sec
  And click "Saved networks"
  