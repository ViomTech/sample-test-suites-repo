@tab-test
Feature: New feature

Scenario: First scenario
  # Start typing steps below.
  And click "New Tab"
  And wait 2 sec
  And switch to last opened tab
  And wait 2 sec
  And check that screen contains "do not find anything "