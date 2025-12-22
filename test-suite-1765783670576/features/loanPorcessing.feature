@rcuRegression
Feature: Credit feature

Scenario: Rcu scenario
{module:LMS_Login(lms_username="gaurav.g@vastuhfc.com", lms_password="Vastu@123")}
{module:LMS_view_details(LAN_value="value")}
{module:applicationStage_Open}
# RCU Initiation
And click "Select Stage"
And click "RCU"
And click on the element with class "go_button_div"
And check that screen contains "Attach Application Form"
And check that checkbox "Attach Application Form" is checked
And click "check_type"
And click "Internal"
And check that screen contains "Internal RCU Manager"
And click "user"
And click "Hema Mahajan (004765)"
And click "type_of_check"
And click "Documents"
And click "dropdown_7394"
And click "Sampled"
And check that screen contains "Co-Applicant Name:"
And click "dropdown_8393"
And click "Sampled"
And enter "Addcc@gmail.com" into "add_cc"
And enter "Doing for the testing purpose" into "Please Enter Remark"
#skiping the attachment checkbox for due to multiple checkbox(please add all the atachment later)
And click "document_category"
And click "RCU"
And check that screen contains "Document Type"
And click "document_type"
And click "Rcu Doc"