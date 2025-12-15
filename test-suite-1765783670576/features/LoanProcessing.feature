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
And click on the element with id as "assign_to"
And click "Harshal Sawant (EMP54605)"
And click on the element with id as "queries_0_sub_section"
And click "Add Customer"
And click on the element with id as "queries_0_customer_type" 
And click "Co-Applicant"
And click on the element with id as "queries_0_reason"
And click "Female customer not present in case"
And click "KYC"
And click "Submit"

#Need Api for complete

Scenario: Qc scenario
And click "View Detailed Progress "
And check that screen contains "Application Stages"
And check that screen contains "QC"
And check that screen contains "initiated"
And click on the element with class "stage_icons" at index 2
And click on the element with id as "user"
And click "Harshal Sawant (EMP54605)"
And click "OK" with exact phrase
And check that screen contains "Completed"




