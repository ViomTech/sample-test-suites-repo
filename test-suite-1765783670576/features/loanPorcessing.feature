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