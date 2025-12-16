@view_loan_details @regression @lms_regression
Feature: Credit feature

Scenario: Lead scenario
{module:LMS_Login(lms_username="gaurav.g@vastuhfc.com", lms_password="Vastu@123")}
{module:LMS_view_details(LAN_value="value")}
And click "View Detailed Progress "
And check that screen contains "Application Stages"
And check that screen contains "Lead"
And check that screen contains "initiated"
And click on the element with class "stage_icons"
And wait 2 sec
{module:LeadParameters(assign_name="value", sub_section="value", reason="value")}
And click "KYC"
And click "Submit"

#Need Api for complete Lead

Scenario: Qc scenario
And click "View Detailed Progress "
And check that screen contains "Application Stages"
And check that screen contains "QC"
And check that screen contains "initiated"
And click on the element with class "stage_icons" at index 2
{module:QcParameters(credit_manager="value")}
And click "OK" with exact phrase
And check that screen contains "Completed"

Scenario: Dedupe scenario
And check that screen contains "initiated"
And click "stage_icons"  #forward icon
And click "Swati Singanjude (VIOM)"
And click on the element with id as "reason"
And enter "reason"
And click "Submit"
And click "X"
And click "dropdown_img"
And click "Log Out"
And wait 5 sec
{module:LMS_Login(lms_username="hema.mahajan@vastuhfc.com", lms_password="Vastu@123")}
{module:LMS_view_details(LAN_value="value")}
And check that screen contains "forward"
And click "forward"
And check that screen contains following
|Loan Account Number|
|Matched LAN’s|
And click "Link"
And check that screen contains "Are you sure you want to link lan?"
And click "OK"
And wait 2 sec
And check that screen contains "Linked"
{module:dedupe_OverallStatus(status="value")}
And switch to main tab








