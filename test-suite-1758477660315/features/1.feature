@regression
Feature: New feature

Scenario: First scenario
  And enter "user_4650@vastuhfc.com" into "Email"
    And enter "123456" into "Password"
    And click on the 2nd "Login"
    And wait 2 sec
    And click "View"
    And wait 5 sec
    And switch to last opened tab
    And wait 1 sec
    #And check that screen contains "Application Details"
    #And click "Basic"
    #And click on the element with id as "a_basic"
    And  click "Basic" inside a with class "ul-li-a-class basic"
   # And check that screen contains "Tenure Requested ( In months - Max: 240 )"  