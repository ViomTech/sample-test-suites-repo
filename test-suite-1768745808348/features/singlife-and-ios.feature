@singlife-and-ios
  Feature: login feature
    Scenario: Unhappy login scenario
      #click "{el:x_button}"
      And hover over "Login"
      And click "MYSINGLIFE"
      And wait 8 sec
      And switch to last opened tab
      And wait for "Hello there"
      And switch to app "ios-app"
      And wait 2 secs
      And click "General"
      And click "Keyboard"
      And click "Text Replacement"
      And wait 2 sec
      And click "Add"
      And click "Phrase"
      And enter "Test nimble" into "Phrase"
      And switch to app "web-app"
      And wait 3 secs
      And click "{el:Loginwithemail}"
      And wait 2 sec
      And click "{el:email}"
      And enter "{userid}"
      And click on the element with id as "input36"
      And enter "{password}"
      And click "Sign in"
      And wait 2 sec
      And check that screen contains "Incorrect username or password."
      And check that screen contains "Please try again!"
      And click "Help"
      And wait 2 sec
      And switch to last opened tab
      And click "I can’t login to MySinglife portal using Singpass. What should I do?"
      And wait 2 sec
      And click on the 1st "here" inside a with exact phrase
      And wait 5 sec
      And scroll down until screen contains "Your feedback matters" with exact phrase
      And click "Lodge a complaint"
      And switch to app "ios-app"
      And wait 5 secs
      And enter "Hello" into "Shortcut"
      And click "Save"
      And wait 2 sec
      And click "Search"
      And enter "Test nimble"  
      And switch to app "web-app"
      And wait 5 sec
      And wait for "Salutation" with exact phrase
      And scroll down until screen contains "Salutation" with exact phrase
      And click "Please select..." with exact phrase
      And click "Mr"
      And click on the element with id as "firstName"
      And enter "firstName"
      And click on the element with id as "surname"
      And enter "surname"
      And click on the element with id as "email"
      And enter "email@test.com"
      And click on the element with id as "phoneNumber"
      And enter "98765432"
      And click on the element with id as "nationalIdentifier"
      And enter "121"
      And click "I have read and agree to the terms and conditions above. "
      And click "Submit"
      And wait 3 secs
      And check that screen contains "sorry our service standard has fallen short of your expectations"
      And wait 5 secs