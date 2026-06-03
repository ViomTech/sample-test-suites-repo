@signup
Feature: ICTRed feature


Scenario: Sign up as new user
And click "Sign In"
And check that screen contains "Good to have you back!"
And wait 1 sec
And click "Sign Up"
And wait 2 sec
And check that screen contains "Let's get started!"
{module:signupForm(firstName="{firstName}", middleName="{middleName}", lastName="{lastName}", username="ekampic11@gmail.com", password="{password}", phone="543627445")}
#scroll up until screen contains "Confirm Password*" with exact phrase
And scroll down until screen contains "Confirm Password*" with exact phrase
And wait 5 sec
And click "Continue"
And wait 3 sec
And click "Log Out"
And click "{el:LogOut}"
And wait 12 sec
#check that screen contains "Verify OTP"


Scenario: Sign up using duplicate email
And click "Sign In"
And wait 1 sec
And click "Sign Up"
And check that screen contains "Let's get started!"
{module:signupForm(firstName="{firstName}", middleName="{middleName}", lastName="{lastName}", username="ekampic11@gmail.com", phone="543627445", password="{password}")}
And scroll down until screen contains "Confirm Password*" with exact phrase
And wait 5 sec
And click "Continue"
And wait 2 sec
And check that screen contains "User already exists"

Scenario: Sign up using duplicate phone
And click "Sign In"
And wait 1 sec
And click "Sign Up"
And check that screen contains "Let's get started!"
{module:signupForm(firstName="{firstName}", middleName="{middleName}", lastName="{lastName}", username="11ekampic11@gmail.com", phone="543627445", password="{password}")}
And wait 2 sec
And click "Continue"
And wait 2 sec
And check that screen contains "User already exists"





