@regression
Feature: New feature

Scenario: First scenario
  And enter "user_4650@vastuhfc.com" into "Email"
    And enter "123456" into "Password"
    And click on the 2nd "Login"
    And wait 2 sec
    And click "View"
    And wait 15 sec
    And switch to last opened tab
    And wait 5 sec
    And click "Application Form"
  