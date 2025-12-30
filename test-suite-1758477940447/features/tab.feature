@tab-test
Feature: New feature
Scenario: First scenario
And click "new tab"
And wait 9 sec
And switch to last opened tab
And wait 2 sec
And check that screen contains "This is a sample page"

@test
Scenario: upload scenario
And click "Elements" with exact phrase
And wait 2 sec
And click "Upload and Download"
And upload file "C:\Users\Vastu User\Documents\LMS screens\Dedupe.txt" to "input[id='uploadFile']"
And wait 2 sec
And check that screen contains "C:\fakepath\Dedupe.txt"
And wait 5 sec

@table_test
Scenario: web table scenario
And click "Elements" with exact phrase
And wait 2 sec
And click "{el:WebTables}"
And wait 2 sec
And check that web table with class "rt-table" where column 0 contains "Cierra" then column 1 equals "Vega"
And wait 10 sec
