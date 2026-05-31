@ictred
Feature: ICTRed feature


Scenario: Sign up as new user
And click "Sign In"
And check that screen contains "Good to have you back!"
And wait 1 sec
And click "Sign Up"
And check that screen contains "Let's get started!"
{module:signupForm(firstName="{firstName}", middleName="{middleName}", lastName="{lastName}", username="{username}", password="{password}", phone="{phone}")}
And wait 1 sec
#click "Continue"
And wait 2 sec
And check that screen contains "Verify OTP"


Scenario: Sign up using duplicate email id
And click "Sign In"
And wait 1 sec
And click "Sign Up"
And check that screen contains "Let's get started!"
{module:signupForm(firstName="{firstName}", middleName="{middleName}", lastName="{lastName}", username="{username}", phone="{phone}", password="{password}")}
And wait 5 sec
#check that screen contains "Verify you are human" and save it as "flagCaptcha" and continue
#print value of "{flagCaptcha}"
#wait 30 secs
#  if (flagCaptcha Equals true)
#    press TAB
#    press ENTER
#  endif
And click "Continue"
And check that screen contains "User already exists"





