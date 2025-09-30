@regression 
Feature: Dummy Feature

@smoke
Scenario: Dummy Scenario
# start scripting test steps below
    check that screen contains firstName
    check that screen contains lastname 
    click submit button
    enter amit into firstName    
    enter "gupta" into "lastName"
    click "submit" button