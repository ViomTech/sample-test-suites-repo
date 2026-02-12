@two-apps-execution-test
Feature: Test

  Scenario: Unhappy login scenario
    And wait 2 sec
    And click "Accept"
    And wait 1 sec
    And click "HELP"
    And switch to app "ios-app"
    And wait 2 secs
    And click "General"
    And click "Keyboard"
    And click "Text Replacement"
    And wait 2 sec
    And click "Add"
    And click "Phrase"
    And enter "Test nimble" into "Phrase"
    And enter "Hello" into "Shortcut"
    And click "Save"
    And wait 2 sec
    And click "Search"
    And enter "Test nimble"
    And switch to app "web-app"
    And wait 1 sec
    And click "Lost property"
    