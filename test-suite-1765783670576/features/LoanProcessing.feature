@loan_details @regression 
Feature: Credit feature

@sanity
Scenario: Lead scenario
{module:LMS_Login(lms_username="rohit.shinde@vastuhfc.com", lms_password="Vastu@123")}
{module:LMS_view_details(LAN_value="APP1767368018473")}
And click on the element with class "view_button_loan_list"
And wait 2 sec
And switch to last opened tab
{module:applicationStage_Open}
And check that screen contains "Lead"
And check that screen contains "Completed"
And wait 2 sec

#@sanity
Scenario: Qc scenario
And check that screen contains "QC"
And check that screen contains "Initiated"
And click on the element with class "stage_icons" at index 2
And wait 2 sec
And click on the element with id as "user"
And click "Rohit Shinde (07690)" 
And click on the element with class "ant-btn css-4hvg6c ant-btn-default ant-btn-dangerous ant-btn-color-dangerous ant-btn-variant-outlined fixed-width-button"
And check that screen contains "Completed"
And wait 3 sec

@sanity
Scenario: AML scenario
And check that screen contains following
|AML|
|Completed (Positive)|
#check that web table where column 1 contains "AML" then column 4 equals "Completed (Positive)"
#check that web table with class "ant-table-row ant-table-row-level-0" where column 0 equals "AML" then column 3 equals "Completed (Positive)"
#check that web table with class "ant-table-row ant-table-row-level-0" where column 0 equals "AML" then column 3 equals "Completed (Positive)"
And wait 2 sec

@sanity
Scenario: Dedupe scenario
{module:LMS_Login(lms_username="rohit.shinde@vastuhfc.com", lms_password="Vastu@123")}
{module:LMS_view_details(LAN_value="APP1767368018471")}
And click on the element with class "view_button_loan_list"
And wait 2 sec
And switch to last opened tab
{module:applicationStage_Open}
And wait 2 sec
And check that screen contains following
|Dedupe|
|Initiated|
And click on the element with class "stage_icons" at index 2
And wait 3 sec
And click on the element with id as "user"
And enter "Rohit"
And click "Rohit Shinde (07690)"
And wait 2 sec
And click on the element with id as "reason"
And enter "reason"
And wait 2 sec
And click "Submit" inside span
#click on the element with class "ant-btn-primary" at index 3
And wait 3 sec
And click "{el:Stage_close}"
And wait 2 sec
And click on the element with class "dropdown_img"
And click "Log Out"
And wait 5 sec
And enter "rohit.shinde@vastuhfc.com" into "Enter your email"
And enter "Vastu@123" into "Enter your password"
And wait 3 sec
And click "Sign in"
And wait 3 sec
{module:applicationStage_Open}
And wait 2 sec
And check that screen contains "Forward"
And click "Forward"
And wait 5 sec
And switch to last opened tab
And wait 2 sec
And click "{el:UAT_Legal_OverallStatus}"
And wait 2 sec
And click "{el:Dedupe_OverallSataus_addButton}"
And wait 2 sec
And click on the element with id as "remark"
And type "testing"
And wait 2 sec
And click on the element with id as "status"
And click "{el:Dedupe_StatusPositive}"
#click on the 1st "Positive" inside div with class "ant-select-item-option-content" with exact phrase
And click "{el:Dedupe_Submit}"
And wait 3 sec
And check that screen contains "Completed"

@pdsmoke
Scenario: PD scenario
{module:LMS_Login(lms_username="gaurav.g@vastuhfc.com", lms_password="Vastu@123")}
{module:LMS_view_details(LAN_value="APP1762944190784")}
And click on the element with class "view_button_loan_list"
And wait 2 sec
And switch to last opened tab
And click on the element with id as "rc_select_0"
And wait 2 sec
And click on the 1st "PD" inside div with class "ant-select-item-option-content" with exact phrase
And click on the element with class "go_button_div"
And click on the element with id as "pd_type"
And click on the 1st "Tele Pd" inside div with class "ant-select-item-option-content" with exact phrase
And wait 2 sec 
And click on the element with id as "assign_to"
And click on the 1st "Farheen Ansari (EMP03384)" inside div with class "ant-select-item-option-content" with exact phrase
And wait 2 sec
And click on the element with id as "customer_name"
And click on the 1st "Vastu LMS" inside div with class "ant-select-item-option-content" with exact phrase
And wait 2 sec
And click on the 2nd "Initiate" inside span
And wait 10 sec
{module:applicationStage_Open}
#PD already initiated checking complete state
And check that screen contains "Initiated"
And click on the element with class "stage_icons" at index 2
And check that screen contains "Tele Pd"
And click on the element with id as "pd_status"
And wait 2 sec
And click on the 1st "Positive" inside div with class "ant-select-item-option-content" with exact phrase
And enter "DONE" into "Please enter Credit Comments"
And wait 2 sec
And click "Submit" inside span
And wait 5 sec

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

@technical
Scenario: Technical Scenario
{module:LMS_Login(lms_username="rohit.shinde@vastuhfc.com", lms_password="Vastu@123")}
{module:LMS_view_details(LAN_value="APP1767368018496")}
And click on the element with class "view_button_loan_list"
And wait 2 sec
And switch to last opened tab
And click on the element with id as "rc_select_0"
And wait 2 sec
And click on the 1st "Technical" inside div with class "ant-select-item-option-content" with exact phrase
And click on the element with class "go_button_div"
And check that screen contains "Technical"
And wait 5 sec
And click on the element with id as "check_type"
And click on the 1st "Internal" inside div with class "ant-select-item-option-content" with exact phrase
And click on the element with id as "user"
And click on the 1st "Rohit Shinde (07690)" inside div with class "ant-select-item-option-content" with exact phrase
And click on the element with id as "add_cc"
And type "farheen.ansari@vastuhfc.com"
And click on the element with id as "remark"
And type "testing"
And click on the element with class "ant-checkbox-input" at index 2
And wait 3 sec
And click on the element with id as "document_category"
And click on the 1st "Technical" inside div with class "ant-select-item-option-content" with exact phrase
And click on the element with id as "document_type"
And click on the 1st "Settlement Deed" inside div with class "ant-select-item-option-content" with exact phrase
And wait 3 sec
And click on the 2nd "Initiate" inside span
And wait 5 sec


@legal
Scenario: Legal Scenario
{module:LMS_Login(lms_username="rohit.shinde@vastuhfc.com", lms_password="Vastu@123")}
{module:LMS_view_details(LAN_value="APP1766840122355")}
And click on the element with class "view_button_loan_list"
And wait 2 sec
And switch to last opened tab
And click on the element with id as "rc_select_0"
And wait 2 sec
And click on the 1st "Legal" inside div with class "ant-select-item-option-content" with exact phrase
And click on the element with class "go_button_div"
And check that screen contains "Legal"
And wait 5 sec
And click on the element with id as "check_type"
And click on the 1st "Internal" inside div with class "ant-select-item-option-content" with exact phrase
And click on the element with id as "user"
And click on the 1st "Kalyani Deshmukh (EMP90232)" inside div with class "ant-select-item-option-content" with exact phrase
And click on the element with id as "transaction_type"
And click on the 1st "Fresh Transaction" inside div with class "ant-select-item-option-content" with exact phrase
And wait 2 sec
And click on the element with id as "add_cc"
And type "farheen.ansari@vastuhfc.com"
And click on the element with id as "remark"
And type "testing"
And click on the element with class "ant-checkbox-input" at index 2
And wait 3 sec
And click on the element with id as "document_category"
And click on the 1st "Technical" inside div with class "ant-select-item-option-content" with exact phrase
And click on the element with id as "document_type"
And click on the 1st "Boundary Certificates" inside div with class "ant-select-item-option-content" with exact phrase
And wait 3 sec
And click on the 2nd "Initiate" inside span
And wait 5 sec