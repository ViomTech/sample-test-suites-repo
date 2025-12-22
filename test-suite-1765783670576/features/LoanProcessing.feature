@loan_details @regression 
Feature: Credit feature

Scenario: Lead scenario
{module:LMS_Login(lms_username="gaurav.g@vastuhfc.com", lms_password="Vastu@123")}
{module:LMS_view_details(LAN_value="APP1766050944138")}
And click on the element with class "view_button_loan_list"
And wait 2 sec
And switch to last opened tab
{module:applicationStage_Open}
And check that screen contains "Lead"
And check that screen contains "Completed"
And wait 2 sec

Scenario: Qc scenario
And check that screen contains "QC"
And check that screen contains "Initiated"
And click on the element with class "stage_icons" at index 2
And wait 2 sec
And click on the element with id as "user"
And click "lakhan (118)" 
And click on the element with class "fixed-width-button"
And check that screen contains "Completed"


Scenario: AML scenario
And check that screen contains following
|AML|
|Completed (Positive)|

Scenario: Dedupe scenario
And check that screen contains following
|Dedupe|
|Initiated|
And click on the element with class "stage_icons" at index 2
And click on the element with id as "user"
And enter "Farheen"
And click "Farheen Ansari (EMP03384)"
And click on the element with id as "reason"
And enter "reason"
And click on the element with class "ant-btn-primary" at index 3
And wait 5 sec

@sanity
Scenario: Dedupe
{module:LMS_Login(lms_username="gaurav.g@vastuhfc.com", lms_password="Vastu@123")}
{module:LMS_view_details(LAN_value="APP1766050944138")}
And click on the element with class "view_button_loan_list"
And wait 2 sec
And switch to last opened tab
And click on the element with class "dropdown_img"
And click "Log Out"
And wait 5 sec
And enter "farheen.ansari@vastuhfc.com" into "Enter your email"
And enter "Vastu@123" into "Enter your password"
And wait 3 sec
And click "Sign in"
And wait 3 sec
{module:applicationStage_Open}
And check that screen contains "Forward"
And click "Forward"
And switch to last opened tab
And wait 10 sec
And check that screen contains "Loan Account Number"
And check that screen contains "Matched LAN’s"
And wait 3 sec
And click "{el:OverallStatus}"
And wait 2 sec
And click on the 1st child with class "tab_form_sub_edit_dedupe"
And click on the element with id as "status"
And click on the 4th "Positive"
And click on the element with id as "remark"
And enter "testing"
And click "Submit"
And switch to main tab
And check that screen contains "completed"
And check that "Completed" is a link
{module:applicationStage_Close}
{module:LogOut}
{module:LMS_Login(lms_username="gaurav.g@vastuhfc.com", lms_password="Vastu@123")}









