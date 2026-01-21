@loan_details @regression 
Feature: Credit feature

Scenario: Lead scenario
{module:LMS_Login(lms_username="rohit.shinde@vastuhfc.com", lms_password="Vastu@123")}
{module:LMS_view_details(LAN_value="APP1767368018465")}
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
And wait 4 sec

Scenario: Dedupe scenario
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

@lms
Scenario: income Evaluation scenario
{module:LMS_Login(lms_username="rohit.shinde@vastuhfc.com", lms_password="Vastu@123")}
{module:LMS_view_details(LAN_value="APP1767368018470")}
And click on the element with class "view_button_loan_list"
And wait 2 sec
And switch to last opened tab
And wait 3 sec
And click "Underwriting"
And wait 3 sec
And click "{el:svg_element}"
And wait 3 sec
And click "{el:selectScheme}"
And wait 3 sec
And click "{el:PdAssessment}"
And wait 3 sec
And click on the element with id as "salary-details-form_assessment"
And wait 2 sec
And click "Bills" inside div with class "ant-select-item-option-content" with exact phrase
And wait 5 sec
And click "Please select" inside span
And wait 3 sec
And click on the 2nd "1 Month" inside div with exact phrase
And wait 3 sec
And click "Select Select" inside span with class "ant-select-selection-placeholder"
And wait 2 sec
And click "{el:incomeDec2025}" inside div
And wait 2 sec
And enter "40000" into "Please enter sales"
And wait 2 sec
And enter "30000" into "Please enter purchase"
And wait 2 sec
And enter "10000" into "Please enter rent"
And wait 2 sec
And enter "40000" into "Please enter salaries"
And wait 2 sec
And enter "5000" into "Please enter goods transportation cost"
And wait 2 sec
And enter "5000" into "Please enter monthly electricity bill"
And wait 2 sec
And enter "4000" into "Please enter telephone bills"
And wait 2 sec
And enter "10000" into "Please enter other expense"
And wait 5 sec
And click "Preview" inside span
And wait 8 sec
And click "{el:IncomeDetailsSubmit}"
And wait 5 sec
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
And click "Auto Deviation" inside span
And wait 5 sec
And click "Case Analysis" inside span
And wait 3 sec
And click "Add Strength" inside span
And wait 2 sec
And enter "testing Add Strength " into "Please Enter Description"
And wait 3 sec
And click "{el:addStrengthSubmit}"
And wait 3 sec
And wait 3 sec
And click "Add Risk and Mitigates" inside span
And wait 2 sec
And enter "50-55% as per the underwriting guidelines." into "Please Enter Description"
And wait 3 sec
#click on the element with id as "description"
And click "{el:RiskSubmit}"
And wait 3 sec
And click "Credit Analysis"
And wait 2 sec 
And click "Add Household Expenses" inside span
And wait 3 sec
And click on the element with id as "data_0_frequency"
And wait 2 sec 
And click "Monthly" inside div with exact phrase
And wait 2 sec
And enter "5000" into the 1st "Please enter Amount"
And wait 3 sec
And click on the element with id as "data_1_frequency"
And wait 2 sec
And click "Monthly" inside div with exact phrase
And wait 2 sec
And enter "1000" into the 2nd "Please enter Amount"
And wait 3 sec
And click on the element with id as "data_2_frequency"
And wait 3 sec 
And click "Quarterly" inside div with exact phrase
And wait 3 sec
And enter "5000" into the 3rd "Please enter Amount"
And wait 3 sec
And click on the element with id as "data_3_frequency"
And wait 5 sec
And click "{el:Monthly}"
And wait 3 sec 
And enter "5000" into the 4th "Please enter Amount"
And wait 3 sec
And click on the element with id as "data_4_frequency"
And wait 5 sec
And click "{el:Monthly5}"
And wait 3 sec
And enter "5000" into the 5th "Please enter Amount"
And wait 3 sec
And click on the element with id as "data_5_frequency"
And wait 2 sec
And click "{el:Quarterly6}"
And wait 3 sec
And enter "5000" into the 6th "Please enter Amount"
And wait 3 sec
And click on the element with id as "data_6_frequency"
And wait 5 sec 
And click "{el:Monthly7}"
And wait 2 sec
And enter "1000" into the 7th "Please enter Amount"
And wait 3 sec
And click on the element with id as "data_7_frequency"
And wait 3 sec 
And click "{el:Monthly8}"
And wait 2 sec
And enter "3000" into the 8th "Please enter Amount"
And wait 3 sec
And click on the element with id as "data_8_frequency"
And wait 3 sec 
And click "{el:Monthly9}"
And wait 2 sec
And enter "3000" into the 9th "Please enter Amount"
And wait 3 sec
And click on the element with id as "data_9_frequency"
And wait 4 sec 
And click "{el:Monthly10}"
And wait 2 sec
And enter "10000" into the 10th "Please enter Amount"
And wait 3 sec
And click on the element with id as "data_10_frequency"
And wait 4 sec 
And click "{el:Quarterly11}"
And wait 2 sec
And enter "3000" into the 11th "Please enter Amount"
And wait 3 sec
And click on the element with id as "data_11_frequency"
And wait 4 sec 
And click "{el:Monthly12}"
And wait 2 sec
And enter "1000" into the 12th "Please enter Amount"
And wait 3 sec
And click on the element with id as "data_12_frequency"
And wait 3 sec 
And click "{el:Quarterly13}"
And wait 2 sec
And enter "1500" into the 13th "Please enter Amount"
And wait 5 sec
And click on the 2nd "{el:householdExpenseSubmit}"
And wait 5 sec
And click "Loan & Insurance" inside div
And check that screen contains "Loan Amount (Include Insurance)"
And wait 2 sec
And read value from "{el:LoanAmountIncludeInsurance}" and save it as "{Loan Amount}"
#read value from "Loan Amount (Include Insurance)" and save it as "LoanAmount"
And click "Disbursement Tranche"
And wait 2 sec
And click on the element with class "add-button"
And wait 3 sec
And click on the element with id as "tranche_amount"
And enter " 2000000"
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

@lms
Scenario: income Evaluation scenario
And wait 3 sec
And click "Underwriting"
And wait 3 sec
And click "{el:svg_element}"
And wait 3 sec
And click "{el:selectScheme}"
And wait 3 sec
And click "{el:PdAssessment}"
And wait 3 sec
And click on the element with id as "salary-details-form_assessment"
And wait 2 sec
And click "Bills" inside div with class "ant-select-item-option-content" with exact phrase
And wait 3 sec
And click on the element with id as "salary-details-form_number_of_month_considered"
And wait 3 sec
And click on the 2nd "1 Month" inside div with exact phrase
And wait 4 sec
And click on the element with id as "salary-details-form_salaryDetails_0_month"
And wait 3 sec
And click "{el:incomeDec2025}" inside div
And wait 3 sec
And enter "40000" into "Please enter sales"
And wait 2 sec
And enter "30000" into "Please enter purchase"
And wait 2 sec
And enter "10000" into "Please enter rent"
And wait 2 sec
And enter "40000" into "Please enter salaries"
And wait 2 sec
And enter "5000" into "Please enter goods transportation cost"
And wait 2 sec
And enter "5000" into "Please enter monthly electricity bill"
And wait 2 sec
And enter "4000" into "Please enter telephone bills"
And wait 2 sec
And enter "10000" into "Please enter other expense"
And wait 5 sec
And click "Preview" inside span
And wait 8 sec
And click "{el:IncomeDetailsSubmit}"
And wait 5 sec
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
And click "Auto Deviation" inside span
And wait 5 sec
And click "Case Analysis" inside span
And wait 3 sec
And click "Add Strength" inside span
And wait 2 sec
And enter "testing Add Strength " into "Please Enter Description"
And wait 3 sec
And click "{el:addStrengthSubmit}"
And wait 3 sec
And wait 3 sec
And click "Add Risk and Mitigates" inside span
And wait 2 sec
And enter "50-55% as per the underwriting guidelines." into "Please Enter Description"
And wait 3 sec
#click on the element with id as "description"
And click "{el:RiskSubmit}"
And wait 3 sec
And click "Credit Analysis"
And wait 2 sec 
And click "Add Household Expenses" inside span
And wait 3 sec
And click on the element with id as "data_0_frequency"
And wait 2 sec 
And click "Monthly" inside div with exact phrase
And wait 2 sec
And enter "5000" into the 1st "Please enter Amount"
And wait 3 sec
And click on the element with id as "data_1_frequency"
And wait 2 sec
And click "Monthly" inside div with exact phrase
And wait 2 sec
And enter "1000" into the 2nd "Please enter Amount"
And wait 3 sec
And click on the element with id as "data_2_frequency"
And wait 3 sec 
And click "Quarterly" inside div with exact phrase
And wait 3 sec
And enter "5000" into the 3rd "Please enter Amount"
And wait 3 sec
And click on the element with id as "data_3_frequency"
And wait 5 sec
And click "{el:Monthly}"
And wait 3 sec 
And enter "5000" into the 4th "Please enter Amount"
And wait 3 sec
And click on the element with id as "data_4_frequency"
And wait 5 sec
And click "{el:Monthly5}"
And wait 3 sec
And enter "5000" into the 5th "Please enter Amount"
And wait 3 sec
And click on the element with id as "data_5_frequency"
And wait 2 sec
And click "{el:Quarterly6}"
And wait 3 sec
And enter "5000" into the 6th "Please enter Amount"
And wait 3 sec
And click on the element with id as "data_6_frequency"
And wait 5 sec 
And click "{el:Monthly7}"
And wait 2 sec
And enter "1000" into the 7th "Please enter Amount"
And wait 3 sec
And click on the element with id as "data_7_frequency"
And wait 3 sec 
And click "{el:Monthly8}"
And wait 2 sec
And enter "3000" into the 8th "Please enter Amount"
And wait 3 sec
And click on the element with id as "data_8_frequency"
And wait 3 sec 
And click "{el:Monthly9}"
And wait 2 sec
And enter "3000" into the 9th "Please enter Amount"
And wait 3 sec
And click on the element with id as "data_9_frequency"
And wait 4 sec 
And click "{el:Monthly10}"
And wait 2 sec
And enter "10000" into the 10th "Please enter Amount"
And wait 3 sec
And click on the element with id as "data_10_frequency"
And wait 4 sec 
And click "{el:Quarterly11}"
And wait 2 sec
And enter "3000" into the 11th "Please enter Amount"
And wait 3 sec
And click on the element with id as "data_11_frequency"
And wait 4 sec 
And click "{el:Monthly12}"
And wait 2 sec
And enter "1000" into the 12th "Please enter Amount"
And wait 3 sec
And click on the element with id as "data_12_frequency"
And wait 3 sec 
And click "{el:Quarterly13}"
And wait 2 sec
And enter "1500" into the 13th "Please enter Amount"
And wait 5 sec
And click on the 2nd "{el:householdExpenseSubmit}"
And wait 5 sec
And click "{el:caseStoryBoardEdit}"
And wait 2 sec
And enter "positive" into "Please fill PD officer comments"
And wait 3 sec
And click "{el:caseBoardSubmit}"
And wait 5 sec
And click "Loan & Insurance" inside div
And check that screen contains "Loan Amount (Include Insurance)"
And wait 2 sec
And read value from "{el:LoanAmountIncludeInsurance}" and save it as "{Loan Amount}"
#read value from "Loan Amount (Include Insurance)" and save it as "LoanAmount"
And click "Disbursement Tranche"
And wait 2 sec
And click on the element with class "add-button"
And wait 3 sec
And click on the element with id as "tranche_amount"
And enter " 2000000"
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
And click "{el:incomeEvComplete}"
And wait 3 sec
And click "OK" inside span with exact phrase 
And wait 3 sec
