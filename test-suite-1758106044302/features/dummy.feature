@regression 
Feature: Dummy Feature

@smoke
Scenario: Dummy Scenario
# start scripting test steps below
And check that screen contains "firstName"
And check that screen contains "lastname"
And click "submit"
And type "amit" into "firstName"
And type "gupta" into "lastName"
And click "submit"