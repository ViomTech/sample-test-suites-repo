@loan_details @regression
Feature: Credit feature

@rcu
Scenario: Rcu scenario
{module:LMS_Login(lms_username="gaurav.g@vastuhfc.com", lms_password="Vastu@123")}
{module:LMS_view_details(LAN_value="APP1762944190784")}
And click on the element with class "view_button_loan_list"
And wait 2 sec
And switch to last opened tab
# RCU Initiation
And click on the element with id as "rc_select_0"
And wait 2 sec
And click on the 1st "RCU" inside div with class "ant-select-item-option-content" with exact phrase
And click on the element with class "go_button_div"
And check that screen contains "Attach Application Form"
And click on the element with id as "check_type"
And click "Internal"
And check that screen contains "Internal RCU Manager"
And click on the element with id as "user"
And click "jeeevan patil (456666)"
And click on the element with id as "type_of_check"
And wait 5 sec
And click on the 1st "Documents" inside div with class "ant-select-item-option-content" with exact phrase
And wait 3 sec
And click on the element with id as "dropdown_8405"
And click "Sampled"
And click on the element with id as "add_cc"
And type "farheen.ansari@vastuhfc.com"
And wait 3 sec
And click "Please Enter Remark"
And enter "Doing for the testing purpose" into "Please Enter Remark"
#skiping the attachment checkbox for due to multiple checkbox(please add all the atachment later)
And click on the element with class "ant-checkbox-input" at index 3
And click on the element with id as "document_category"
And click on the 1st "RCU" inside div with class "ant-select-item-option-content" with exact phrase
And check that screen contains "Document Type"
And click on the element with id as "document_type"
And click "Rcu Doc"
And wait 2 sec
And upload file "/Users/mac/Desktop/NewDoc.png" to "input[id='document_path']"
And wait 10 sec
And click on the 2nd "Initiate" inside span
And wait 3 sec

@principal
Scenario: Principal Aproval
{module:LMS_Login(lms_username="gaurav.g@vastuhfc.com", lms_password="Vastu@123")}
{module:LMS_view_details(LAN_value="APP1760711215694")}
And click on the element with class "view_button_loan_list"
And wait 2 sec
And switch to last opened tab
And click on the element with id as "rc_select_0"
And wait 2 sec
And click on the 1st "In Principal Approval" inside div with class "ant-select-item-option-content" with exact phrase
And click on the element with class "go_button_div"
And click on the element with id as "assigned_to"
And click on the 1st "Hema Mahajan (004765)" inside div with class "ant-select-item-option-content" with exact phrase
And wait 2 sec
And click "Please Enter Remark"
And enter "Doing for the testing purpose" into "Please Enter Remark"
And click on the 2nd "Initiate" inside span
And wait 5 sec

@dedupetest
Scenario: Dedupe
{module:LMS_Login(lms_username="farheen.ansari@vastuhfc.com", lms_password="Vastu@123")}
{module:LMS_view_details(LAN_value="APP1766128675338")}
And click on the element with class "view_button_loan_list"
And wait 2 sec
And switch to last opened tab
{module:applicationStage_Open}
And check that screen contains "Initiated"
And wait 2 sec
And click "Initiated"
And switch to last opened tab
And wait 10 sec
And check that screen contains "Loan Account Number"
And wait 3 sec
And click "{el:OverallStatus}"
And wait 2 sec
And click on the 1st child with class "tab_form_sub_edit_dedupe"
And click on the element with id as "status"
And click on the 4th "Positive"
And click on the element with id as "remark"
And enter "testing"
And click "Submit"
And Wait 5 sec

@technicalCom
Scenario: Technical Complete
{module:LMS_Login(lms_username="jeevan.patil@vastufinserve.com", lms_password="Vastu@123")}
{module:LMS_view_details(LAN_value="APP1762504418131")}
And click on the element with class "view_button_loan_list"
And wait 2 sec
And switch to last opened tab
{module:applicationStage_Open}
And check that screen contains "Initiated"
And wait 2 sec
And click on the 4th "Initiated" inside span with exact phrase
And switch to last opened tab
And wait 5 sec
And check that screen contains "Property Details"
And check that screen contains "As Per Govt. Value Of Property"
And check that screen contains "Valuation Of Property "
And wait 2 sec
And click on the element with id as "ploat_as_per_plan"
And type "1800"
And wait 5 sec  
And click on the element with id as "ploat_as_per_site"
And type "1800"
And wait 3 sec
And enter "Jeevan Patil" into "Please Enter Name of Current Owner"
And wait 3 sec
And click on the element with id as "current_owner_name"
And type "Jeevan Patil"
And click on the element with id as "date_of_inspection"
And click on the 1st "5" inside div with class "ant-picker-cell-inner" with exact phrase
And wait 2 sec 
And click on the element with id as "mobile"
And type "7387767401"
And click on the element with id as "ploat_as_per_plan"
And type "1800"
And click on the element with id as "ploat_as_per_site"
And type "1800"
And check that screen contains "Proposed Construction area"
And check that screen contains "Amenities"
And wait 3 sec
And enter "1200" into "ploat_as_per_plan" with exact phrase
And wait 5 sec

@legalcom
Scenario: Legal Complete
{module:LMS_Login(lms_username="farheen.ansari@vastuhfc.com", lms_password="Vastu@123")}
{module:LMS_view_details(LAN_value="APP1762000042549")}
And click on the element with class "view_button_loan_list"
And wait 2 sec
And switch to last opened tab
{module:applicationStage_Open}
And check that screen contains "Initiated"
And wait 2 sec
And click "{el:Legal_Initiated_2355}"
And wait 3 sec
And switch to last opened tab
And wait 5 sec
And check that screen contains "Property Description"
And click "Please select"
#click on the 1st "ISHWAR BHIMA RATHOD (Applicant)" inside div with class "ant-select-item-option-content" with exact phrase
#click "ISHWAR BHIMA RATHOD (Applicant)"
And click "RAMESH CHAND MAHAWAR (Applicant)"
And wait 3 sec
And enter "650" into "Please Enter Area of Property"
And click on the element with id as "unit_type"
And wait 2 sec
And click "Sq.Yard"
#click on the 1st "Sq.Yard" inside div with class "ant-select-item-option-content" with exact phrase
And wait 1 sec
And enter "RD Circle Karmayogi Nagar Nashik" into "Please Enter Address Line 1"
And enter "RD Circle Karmayogi Nagar Nashik" into "Please Enter Address Line 2"
And enter "Nashik" into "Please Enter Landmark"
And click on the element with id as "city"
#click on the 1st "Nashik" inside div with class "ant-select-item-option-content" with exact phrase
And type "Nashik"
And click on the 1st "Nashik" inside div with class "ant-select-item-option-content" with exact phrase
And click on the element with id as "taluka"
And type "Nashik"
And click on the element with id as "district"
And type "Nashik"
And click on the 1st "Nashik" inside div with class "ant-select-item-option-content" with exact phrase
And click on the element with id as "state"
And type "Maharashtra"
And click on the 1st "Maharashtra" inside div with class "ant-select-item-option-content" with exact phrase
And click on the element with id as "country"
And click on the 1st "India" inside div with class "ant-select-item-option-content" with exact phrase
And wait 3 sec
And enter "Remaining Property" into "Please Enter On East Side"
And wait 1 sec 
And enter "Row House No. 212" into "Please Enter On West Side" with exact phrase
And enter "Plot of Nirmla Devi etc. 45" into "Please Enter On North Side"
And wait 2 sec
And enter "Part B Harbans Singh 48" into "Enter On South Side"
And wait 3 sec
And enter "12-01-2026" into "DD-MM-YYYY" 
And click "Today"
And wait 2 sec
And click on the 1st "Add Documents"
#click "{el:AddDocuments_LegalOpinion}"
And enter "Document" into "Enter document" with exact phrase
And click on the element with id as "documents_0_document_type"
And click on the 1st "Certified" inside div with class "ant-select-item-option-content" with exact phrase
And wait 2 sec 
#click "{el:Legal_Opinion_Submit}"
#click on the 2nd "Submit"
And click on the 2nd "Submit" inside span with exact phrase
And wait 2 sec
#click "{el:AddDocuments_legal_Disbursement}"
And click on the 2nd "Add Documents"
And enter "Document" into "Enter document" with exact phrase
And wait 2 sec
And click "{el:Legal_certificate}"
#click on the element with id as "documents_0_document_type"
And click on the 1st "Certified" inside div with class "ant-select-item-option-content" with exact phrase
And wait 2 sec 
#click "{el:LegalDisbursement_Submit}"
And click on the 2nd "Submit" inside span with exact phrase
And wait 3 sec
#click "{el:Legal_ValidMortage_AddDocuments}"
And click on the 3rd "Add Documents"
And enter "Document" into "Enter document" with exact phrase
And wait 2 sec
And click "{el:Legal_certificate}"
And click on the 1st "Certified" inside div with class "ant-select-item-option-content" with exact phrase
And click on the 2nd "Submit" inside span with exact phrase
#click "{el:Legal_ValidMoratge_Submit}"
And wait 2 sec
And enter "Ms S O Infra a Partnership Firm" into "Please Enter First Owner Name"
And click on the element with id as "report_difference"
And click on the 1st "Yes" inside div with class "ant-select-item-option-content" with exact phrase
#click "Yes"
And click on the element with id as "sarfaesi_flag"
And click on the 1st "Yes" inside div with class "ant-select-item-option-content" with exact phrase
#click "yes"
And enter "Is the title clear and marketable?" into "Please Enter Property Encumbrances"
And enter "AP." into "Please Enter Lawyer name"
And click "No" inside span
And enter "Ok" into "Please Enter Chain Of Events"
And wait 2 sec
# Manual deviation is not mandatory thats is commented for now 
#click on the 1st "Add Manual Deviation"
#click on the element with id as "deviation"
#click on the 1st "Kalyani" inside div with class "ant-select-item-option-content" with exact phrase
#enter "Testing" into "Please Enter Description"
#enter "Testing mitigates" into "Please Enter Mitigates"
#click on the 2nd "Submit" inside span with exact phrase
And click on the element with id as "overall_status"
And wait 2 sec
And click "{el:Legal_OverallStatus_Positive}"
#click on the the 1st "Positive" inside div with class "ant-select-item-option-content" with exact phrase
And enter "Testing" into "Please Enter Overall Conclusion Remark"
And click on the element with id as "declaration"
And click on the element with id as "document_category"
And click on the 1st "Legal" inside div with class "ant-select-item-option-content" with exact phrase 
And click on the element with id as "document_type"
And type "Legal Report"
And click on the 1st "Legal Report" inside div with class "ant-select-item-option-content" with exact phrase
And wait 2 sec
And upload file "/Users/mac/Downloads/LP0000000085144.pdf" to "input[id='document_path']"
And wait 2 sec
And click "Submit" inside span
And wait 10 sec
And check that screen contains "Loan Application Progress"


