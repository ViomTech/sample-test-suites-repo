@loan_details @regression
Feature: Credit feature

Scenario: Rcu scenario
{module:LMS_Login(lms_username="gaurav.g@vastuhfc.com", lms_password="Vastu@123")}
{module:LMS_view_details(LAN_value="APP1759925653117")}
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
And click on the element with id as "dropdown_7394"
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