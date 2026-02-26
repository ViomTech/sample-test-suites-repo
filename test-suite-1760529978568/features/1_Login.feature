Feature: Emirates Web app

@login @regression 
Scenario: Verify invalid credentials
And click "Accept"
{module:login(email="{username11}", pwd="{password11}")}




@login @regression
Scenario: verify log in enablement
And check that button "Log in" is disabled
And enter "v@v.com" into "Email or Emirates Skywards number"
And enter "abc" into "Password"
And check that button "Log in" is enabled

@login @regression
Scenario: Verify invalid credentials
And click "LOG IN"
And enter "v@v.com" into "Email or Emirates Skywards number"
And enter "abc" into "Password"
And click "Log in"
And check that screen contains "Sorry, we have a technical problem at the moment. Please try again later."

{module:login,username:aa,password:bb}
@login @smoke @regression
Scenario: Verify valid credentials
And click "LOG IN"
And enter "v@v.com" into "Email or Emirates Skywards number"
And enter "{var_pwd}" into "Password"
And click "Log in"
And check that screen contains "Not an Emirates Skywards member yet?"

{module:login,username:aa,password:bb}
And click "{el:img_element}" inside img
And check that screen contains "{el:img_element}"
