@tab-test
Feature: New feature

Scenario: First scenario
 And click "new tab"
  And wait 9 sec
  And switch to last opened tab
  And wait 2 sec
  And check that screen contains "This is a sample page"