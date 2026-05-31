@ictredsignup
Feature: ICTRed test feature

Scenario: Sign in using duplicate email id
And click "Sign In"
And wait 1 sec
And click on the element to the below of "Username"
And type "Gurdip" 
And click on the element to the below of "Password"
And enter "{password}" into field on the below of "Password" with exact phrase
And wait 6 sec

Scenario: Sign up as new user
And click "Sign In"
And check that screen contains "Good to have you back!"
And wait 1 sec
And click "Sign Up"
And check that screen contains "Let's get started!"
And wait 2 sec
And click on the element to the below of "First Name"
And enter "{firstName}" into field on the below of "First Name" with exact phrase
And click on the element to the below of "Middle Name"
And enter "{middleName}" into field on the below of "Middle Name" with exact phrase
And click on the element to the below of "Last Name"
And enter "{lastName}" into field on the below of "Last Name" with exact phrase
And click on the element to the below of "Email"
And enter "{username}" into field on the below of "Email" with exact phrase
And wait 2 sec
#click on the element to the right of "Phone Number"
And enter "{phone}" into "{el:signup-phone}"
And wait 2 sec
And click on the element to the below of "Password*"
And wait 1 sec
And enter "{password}" into field on the below of "Password*" with exact phrase
And click on the element to the below of "Confirm Password"
And enter "{password}" into field on the below of "Confirm Password" with exact phrase
And wait 6 sec
#click "Continue"
#wait 2 sec
#check that screen contains "Verify OTP"


Scenario: Sign up using duplicate email id
And click "Sign In"
And wait 1 sec
And click "Sign Up"
And wait 2 sec
And click on the element to the below of "First Name"
And enter "{firstName}" into field on the below of "First Name" with exact phrase
And click on the element to the below of "Middle Name"
And enter "{middleName}" into field on the below of "Middle Name" with exact phrase
And click on the element to the below of "Last Name"
And enter "{lastName}" into field on the below of "Last Name" with exact phrase
And click on the element to the below of "Email"
And enter "{username}" into field on the below of "Email" with exact phrase
And wait 2 sec
#click on the element to the right of "Phone Number"
And enter "{phone}" into "{el:signup-phone}"
And wait 2 sec
And click on the element to the below of "Password*"
And wait 1 sec
And enter "{password}" into field on the below of "Password*" with exact phrase
And click on the element to the below of "Confirm Password"
And enter "{password}" into field on the below of "Confirm Password" with exact phrase
And wait 6 sec
#check that screen contains "Verify you are human" and save it as "flagCaptcha" and continue
#print value of "{flagCaptcha}"
#wait 30 secs
#  if (flagCaptcha Equals true)
#    press TAB
#    press ENTER
#  endif
And click "Continue"
And check that screen contains "User already exists"




