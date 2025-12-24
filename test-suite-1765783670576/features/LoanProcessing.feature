@loan_details @regression 
Feature: Credit feature

@sanity
Scenario: Lead scenario
{module:LMS_Login(lms_username="gaurav.g@vastuhfc.com", lms_password="Vastu@123")}
{module:LMS_view_details(LAN_value="APP1766479961370")}
And click on the element with class "view_button_loan_list"
And wait 2 sec
And switch to last opened tab
{module:applicationStage_Open}
And check that screen contains "Lead"
And check that screen contains "Completed"
And wait 2 sec

@sanity
Scenario: Qc scenario
And check that screen contains "QC"
And check that screen contains "Initiated"
And click on the element with class "stage_icons" at index 2
And wait 2 sec
And click on the element with id as "user"
And click "lakhan (118)" 
And click on the element with class "ant-btn css-4hvg6c ant-btn-default ant-btn-dangerous ant-btn-color-dangerous ant-btn-variant-outlined fixed-width-button"
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

@smoke
Scenario: PD scenario
{module:LMS_Login(lms_username="gaurav.g@vastuhfc.com", lms_password="Vastu@123")}
{module:LMS_view_details(LAN_value="APP1762944190784")}
And click on the element with class "view_button_loan_list"
And wait 2 sec
And switch to last opened tab
{module:applicationStage_Open}
#PD already initiated checking complete state
And check that screen contains "Initiated"
And click on the element with class "stage_icons" at index 2
And check that screen contains "Tele Pd"
And click on the element with id as "pd_status"
And wait 2 sec
And click "Positive"
And enter "DONE" into "Please enter Credit Comments"
And wait 2 sec
And click "Submit" inside span
And waut 5 sec

Scenario: income Evaluation scenario
{module:LMS_view_details(LAN_value="value")}
And click "Income Evaluation"
And check that screen contains following
|Income Evaluation|
|Initiated|
And check that button "{el:forward_incomeEvaluation}" is enabled
And check that button "{el:complete_incomeEvaluation}" is enabled
And check that button "{el:Quary_incomeEvaluation}" is enabled
{module:applicationStage_Close}
And Scroll down until "Loan Details
And click "underwriting"
And check that screen contains "Income Evaluation"
And click "Applicant plus sign"
And click "Scheme"
And enter "details"
And click "preview"
And click "Submit"
And wait 3 sec
And Click "Co-applicant plus sign"
And click "preview"
And click "Submit"
And check that screen contains "bank Account Detail"
And click "Plus icon"
And click "Monthly Inflow and Outflow"
And Click "Bank Balance"
And Click "Analytical Excel"
And click "credit Analysis"
And Click "Add Sanction Condition" in Internal Sanction
And Enter "Detail" into "Condition",
And Enter "Detail" into "Remark",
And Enter "Detail" into "Status",
And Click "Submit"