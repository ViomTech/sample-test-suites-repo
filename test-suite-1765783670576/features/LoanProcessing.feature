@view_loan_details @regression @lms_regression
Feature: Credit feature

Scenario: Lead scenario
{module:LMS_Login(lms_username="gaurav.g@vastuhfc.com", lms_password="Vastu@123")}
{module:LMS_view_details(LAN_value="value")}
{module:applicationStage_Open}
And check that screen contains "Lead"
And check that screen contains "initiated"
And click on the element with class "stage_icons"
And wait 2 sec
{module:LeadParameters(assign_name="value", sub_section="value", reason="value")}
And click "KYC"
And click "Submit"

Scenario: Qc scenario
{module:applicationStage_Open}
And check that screen contains "QC"
And check that screen contains "initiated"
And click on the element with class "stage_icons" at index 2
{module:QcParameters(credit_manager="value")}
And click "OK" with exact phrase
And check that screen contains "Completed"
{module:applicationStage_Close}

scenario: AML scenario
{module:applicationStage_Open}
And check that screen contains following
|AML|
|Completed (Positive)|
{module:applicationStage_Close}

Scenario: Dedupe scenario
{module:applicationStage_Open}
And check that screen contains following
|Dedupe|
|initiated|
And click "{el:forward}"
And click on the element with id as "user"
And click "Swati Singanjude (VIOM)"
And click on the element with id as "reason"
And enter "reason"
And click "Submit"
{module:applicationStage_Close}
{module:LogOut}
And wait 5 sec
{module:LMS_Login(lms_username="hema.mahajan@vastuhfc.com", lms_password="Vastu@123")}
{module:LMS_view_details(LAN_value="value")}
And check that screen contains "forward"
And click "Forward"
And check that screen contains following
|Loan Account Number|
|Matched LAN’s|
And click "Link"
And check that screen contains "Are you sure you want to link lan?"
And click "OK"
And wait 2 sec
And check that screen contains "Linked"
{module:dedupe_OverallStatus(status="positive")}
And switch to main tab
And check that screen contains "completed"
And check that "Completed" is a link
{module:applicationStage_Close}
{module:LogOut}
{module:LMS_Login(lms_username="gaurav.g@vastuhfc.com", lms_password="Vastu@123")}









