@ictred
Feature: ICTRed feature
 
Scenario: Sign up Flow1
click "Sign In"
check that screen contains "Good to have you back!"
wait 1 sec
click "Sign Up"
check that screen contains "Let's get started!"
wait 1 sec
enter "{firstName}" into "{el:signup-firstname}"
enter "{middleName}" into "{el:signup-middlename}"
enter "{lastName}" into "{el:signup-lastname}"
enter "{username}" into "{el:signup-username-email}"
enter "{password}" into "{el:signup-password}"
enter "{password}" into "{el:signup-confirm-password}"
enter "{phone}" into "{el:signup-phone}"
wait 1 sec
click "Continue"


Scenario: Sign up Flow2
click "Sign In"
check that screen contains "Good to have you back!"
wait 1 sec
click "Sign Up"
check that screen contains "Let's get started!"
wait 1 sec
{module:signupForm(firstName="{firstName}", middleName="{middleName}", lastName="{lastName}", username="{username}", password="{password}", phone="value")}