@loan_details @regression 
Feature: Credit feature

Scenario: Lead scenario
{module:LMS_Login(lms_username="rohit.shinde@vastuhfc.com", lms_password="Vastu@123")}
{module:LMS_view_details(LAN_value="APP1767368018353")}
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
And click "Rohit Shinde (07690)" 
And click on the element with class "ant-btn css-4hvg6c ant-btn-default ant-btn-dangerous ant-btn-color-dangerous ant-btn-variant-outlined fixed-width-button"
And check that screen contains "Completed"
And wait 3 sec

Scenario: AML scenario
And check that screen contains following
|AML|
|Completed (Positive)|

@dedupeflow
Scenario: Dedupe scenario
{module:LMS_Login(lms_username="rohit.shinde@vastuhfc.com", lms_password="Vastu@123")}
{module:LMS_view_details(LAN_value="APP1767368018496")}
And click on the element with class "view_button_loan_list"
And wait 2 sec
And switch to last opened tab
{module:applicationStage_Open}
And check that screen contains following
|Dedupe|
|Initiated|
And click on the element with class "stage_icons" at index 2
And click on the element with id as "user"
And enter "Rohit"
And click "Rohit Shinde (07690)"
And click on the element with id as "reason"
And enter "reason"
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

Scenario: TelePd scenario
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
#PD complete
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

@pdsmoke
Scenario: PhysicalPd scenario
And click on the element with id as "rc_select_0"
And wait 2 sec
And click on the 1st "PD" inside div with class "ant-select-item-option-content" with exact phrase
And click on the element with class "go_button_div"
And click on the element with id as "pd_type"
And click on the 1st "Physical Pd" inside div with class "ant-select-item-option-content" with exact phrase
And wait 2 sec 
And click on the element with id as "assign_to"
And click on the 1st "Rohit Shinde (07690)" inside div with class "ant-select-item-option-content" with exact phrase
And wait 3 sec
And click on the 2nd "Initiate" inside span
And wait 5 sec
{module:applicationStage_Open}
#PD complete
And check that screen contains "Initiated"
And click on the element with class "stage_icons" at index 2
And check that screen contains "Physical Pd"
And click on the element with id as "pd_status"
And wait 2 sec
And click on the 1st "Positive" inside div with class "ant-select-item-option-content" with exact phrase
And enter "DONE" into "Please enter Credit Comments"
And wait 2 sec
And click "Submit" inside span
And wait 5 sec

Scenario: VideoPd scenario
And click on the element with id as "rc_select_0"
And wait 2 sec
And click on the 1st "PD" inside div with class "ant-select-item-option-content" with exact phrase
And click on the element with class "go_button_div"
And click on the element with id as "pd_type"
And click on the 1st "Video Pd" inside div with class "ant-select-item-option-content" with exact phrase
And wait 2 sec 
And click on the element with id as "assign_to"
And click on the 1st "Rohit Shinde (07690)" inside div with class "ant-select-item-option-content" with exact phrase
And wait 3 sec
And click on the 2nd "Initiate" inside span
And wait 5 sec
{module:applicationStage_Open}
#PD complete
And check that screen contains "Initiated"
And click on the element with class "stage_icons" at index 2
And check that screen contains "Video Pd"
And click on the element with id as "pd_status"
And wait 2 sec
And click on the 1st "Positive" inside div with class "ant-select-item-option-content" with exact phrase
And enter "DONE" into "Please enter Credit Comments"
And wait 2 sec
And click "Submit" inside span
And wait 5 sec

Scenario: income Evaluation scenario
And click "Income Evaluation"
And check that screen contains following
|Income Evaluation|
|Initiated|
And wait 2 sec
And click "Underwriting"
And click "Credit Analysis"
And wait 3 sec
And check that screen contains "Sanction Condition" with exact phrase
And wait 2 sec
And click "Add Sanction Condition" inside span
And wait 2 sec
And click on the element with id as "sanction_condition_id"
And click "Coapplicant to be added"
And wait 3 sec
And enter "test condition " into "Please enter other condition"
And wait 3 sec
And click "{el:statusSanction}"
And wait 2 sec 
And click "{el:CompletedSanction}"
And wait 5 sec
And click "{el:SubmitSanction}"
#click on the element with id as "status"
#click "Completed" inside div
And wait 2 sec
#click "Submit" inside span
#click on the element with class "ant-btn css-4hvg6c ant-btn-primary ant-btn-color-primary ant-btn-variant-solid"
And wait 5 sec
And click on the 2nd "Add Sanction Condition" inside span
And wait 2 sec
And enter "test condition" into "Please enter other condition"
And wait 3 sec
And enter "condition remark" into the 2nd "Please enter other condition"
And wait 2 sec
And enter "test condition " into "Please enter other condition"
And wait 3 sec
And click "{el:statusSanction}"
And wait 2 sec 
And click "{el:CompletedSanction}"
And wait 5 sec
And click "{el:SubmitSanction}"
And wait 3 sec
#LoanDetails
And click "Loan & Insurance"
And check that screen contains "Loan Amount (Include Insurance)"
And read value from "{el:LoanAmountIncludeInsurance}" and save it as "{Loan Amount}"
#read value from "Loan Amount (Include Insurance)" and save it as "LoanAmount"
And click "Disbursement Tranche"
And wait 2 sec
And click on the element with class "add-button"
And wait 3 sec
And click on the element with id as "tranche_amount"
And enter " 1800000"
And wait 2 sec
And click on the element with id as "disb_start_date"
And wait 2 sec 
And click "{el:startDate}" 
And wait 5 sec
And click on the element with id as "disb_end_date"
And click "{el:endDate}"
And wait 3 sec
And click on the element with id as "tranche_type"
And wait 2 sec
And click "{el:tranchetype}"
And wait 3 sec
And enter "remark" into "Enter remark"
And wait 2 sec
And click "{el:SubmitTranche}"
And wait 5 sec
#go to income tab
And click "Income Evaluation" inside div
And wait 2 sec
And click "{el:completeIncomeEv}"
And wait 3 sec
And click "OK" inside span with exact phrase 
And wait 3 sec

@technical
Scenario: Technical Scenario
#Initiate Technical
And click on the element with id as "rc_select_0"
And wait 2 sec
And click on the 1st "Technical" inside div with class "ant-select-item-option-content" with exact phrase
And click on the element with class "go_button_div"
And check that screen contains "Technical"
And wait 5 sec
And click on the element with id as "check_type"
And click on the 1st "Internal" inside div with class "ant-select-item-option-content" with exact phrase
And click on the element with id as "user"
And click on the 1st "jeeevan patil (456666)" inside div with class "ant-select-item-option-content" with exact phrase
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
# Complete Technical
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

@legal
Scenario: Legal Scenario
{module:LMS_Login(lms_username="kalyani.deshmukh@vastuhfc.com", lms_password="Vastu@123")}
{module:LMS_view_details(LAN_value="APP1766840122355")}
And click on the element with class "view_button_loan_list"
And wait 2 sec
And switch to last opened tab
#Initiate Legal
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
#complete Legal
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
And click on the 3rd "Submit" inside span with exact phrase
And wait. 3 sec
And click "{el:Legal_ValidMortage_AddDocuments}"
And enter "Document" into "Enter document" with exact phrase
And wait 2 sec
And click "{el:Legal_certificate}"
And click on the 1st "Certified" inside div with class "ant-select-item-option-content" with exact phrase
And click "{el:Legal_ValidMoratge_Submit}"
And enter "Ms S O Infra a Partnership Firm" into "Please Enter First Owner Name"
And click on the element with id as "report_difference"
And click "Yes"
And enter "Is the title clear and marketable?" into "Please Enter Property Encumbrances"
And enter "AP." into "Please Enter Lawyer name"
And click "No" inside span

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
