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
#complete technical code from here 
{module:applicationStage_Open}
And check that screen contains "Initiated"
And wait 2 sec
And click "{el:Technical_uat_Initiated}"
And wait 3 sec
And switch to last opened tab
And wait 5 sec
And check that screen contains "Property Details"
And check that screen contains "As Per Govt. Value Of Property"
And check that screen contains "Valuation Of Property "
And wait 2 sec
And enter "SEEMA PRAMOD RUPLAG" into "Please Enter Name of Current Owner"
And enter "15-01-2026" into "Select Date"
#click "Today"
And enter "8329833901" into "Please Enter Contact Number Of Customer"
#click on the element with id as 
And click on the element with id as "ploat_as_per_plan"
And type "138"
And click on the element with id as "ploat_as_per_site"
And type "138"
And click on the element with id as "ploat_rate"
And type "0"
And click on the element with id as "eca_as_per_plan"
And type "0"
And click on the element with id as "eca_as_per_site"
And type "0"
And click on the element with id as "eca_rate"
And type "0"
And click on the element with id as "eca_percentage_completed"
And type "0"
And click on the element with id as "eca_percentage_recommended"
And type "0"
And click on the element with id as "pca_as_per_plan"
And type "1353"
And click on the element with id as "pca_as_per_site"
And type "1353"
And click on the element with id as "pca_rate"
And type "6200"
And click on the element with id as "pca_percentage_completed"
And type "10"
And click on the element with id as "pca_percentage_recommended"
And type "20"
And click on the element with id as "amenities_as_per_plan"
And type "700000"
And click on the element with id as "amenities_percentage_completed"
And type "10"
And click on the element with id as "amenities_percentage_recommended"
And type "20"
And wait 2 sec 
And enter "0" into "Please Enter Government guideline/circle rate for land"
And enter "0" into "Please Enter Government guideline/circle rate for building"
And enter "0" into "Please Enter Land value as per govt rate"
And enter "0" into "Please Enter Flat/apartment value as per government rate (₹)"
And enter "1" into "Please Enter Total valuation as per government rate (₹)"
And enter "Testing" into "Please Enter Remarks"
And enter "11-01-2026" into "Select Date Of Visit"
And enter "12-01-2026" into "Select Date Of Valuation"
And enter "KALYANI DESHMUKH" into "Please Enter Name of Engineer Visited the property"
And enter "Bangalore" into "Please Enter Place"
And click on the element with id as "declaration"
And wait 3 sec
And enter "Near Kapaleshwar temple Gujarat" into "Please Enter Address Line 1"
And enter "WAKA VILLAGE BHAMBOOR, TEHSILE AND DISTT SIRSA" into "Please Enter Address Line 2"
And enter "S No 3/3/4 (Old S No 2)" into "Please Enter Survey No."
And enter "Plot No 03" into "Please Enter Plot No."
And enter "Row Bungalow no.9" into "Please Enter House No./ Flat No."
And click "Please Select Pincode"
And type "42200"
And click on the 1st "422005" inside div with class "ant-select-item-option-content" with exact phrase
#click  "422005"
And enter "Nashik" into "Please Enter Taluka"
And click "{el:Technical_address_Check}"
And wait 3 sec 
And click on the element with id as "address_matching"
And click on the 1st "Yes" inside div with class "ant-select-item-option-content" with exact phrase
And enter "89.27963" into "Please Enter Latitude"
And enter "73.806469" into "Please Enter Longitude"
And wait 2 sec
And enter "Property Of Laxman Waghmare and other" into "Please Enter Address to the North"
And enter "PROPERTY OF HARBANS SINGH" into "Please Enter Address to the South"
And enter "HO MEGHRAJ" into "Please Enter Address to the East"
And enter "Property Of Laxman Bahiru Waghmare" into "Please Enter Address to the West"
And wait 2 sec 
And enter "Property Of Laxman Waghmare and other" into the 2nd "Please Enter Address to the North"
And enter "Property Of Eknath Tupe" into the 2nd "Please Enter Address to the South"
And enter "PROPERTY OF HARBANS SINGH" into the 2nd "Please Enter Address to the East"
And enter "Property Of Laxman Bahiru Waghmare" into the 2nd "Please Enter Address to the West"
And wait 2 sec
And click on the element with id as "boundaries_matching"
And click on the 1st "No" inside div with class "ant-select-item-option-content" with exact phrase 
And enter "Ok" into "Please Enter Mismatch Remark"
And wait 2 sec
And click on the element with id as "status_land_holding"
And click on the 1st "Freehold" inside div with class "ant-select-item-option-content" with exact phrase 
And click on the element with id as "demarcation"
And click on the 1st "Yes" inside div with class "ant-select-item-option-content" with exact phrase 
And click on the element with id as "developed_by"
And click on the 1st "Awas Vikas" inside div with class "ant-select-item-option-content" with exact phrase 
And click on the element with id as "type_of_property_document"
And click on the 1st "Agriculture" inside div with class "ant-select-item-option-content" with exact phrase
And click on the element with id as "type_of_property_site"
And click on the 1st "Commercial" inside div with class "ant-select-item-option-content" with exact phrase
And click on the element with id as "zoning"
And click on the 1st "Residential" inside div with class "ant-select-item-option-content" with exact phrase
And enter "0" into "Please Enter Development Vicinity"
And click on the element with id as "approch_road_type"
And click on the 1st "Cement" inside div with class "ant-select-item-option-content" with exact phrase
And enter "0" into "Please Enter Approach Road Width"
And click on the element with id as "govt_private_road"
And click on the 1st "Private" inside div with class "ant-select-item-option-content" with exact phrase
And click on the element with id as "mc_gp_limit"
And click on the 1st "CORPORATION" inside div with class "ant-select-item-option-content" with exact phrase
And click on the element with id as "identified_through"
And click on the 1st "Customer" inside div with class "ant-select-item-option-content" with exact phrase
And enter "KALYANI DESHMUKH" into "Please Enter Person Met At Site"
And click on the element with id as "type_of_structure"
And click on the 1st "LB" inside div with class "ant-select-item-option-content" with exact phrase
And click on the element with id as "technical_occupancy_type"
And click on the 1st "Self-Occupied" inside div with class "ant-select-item-option-content" with exact phrase
And enter "7" into "Please Enter Max Age Of Property (in years)"
And enter "0" into "Please Enter Current  Age of the property"
And enter "50" into "Please Enter Residual Life"
And click on the element with id as "basic_amenities"
And click on the 1st "Yes" inside div with class "ant-select-item-option-content" with exact phrase
And click on the element with id as "toilet"
And click on the 1st "Yes" inside div with class "ant-select-item-option-content" with exact phrase
And wait 2 sec
And click on the element with id as "maintenance_level"
And click on the 1st "GOOD" inside div with class "ant-select-item-option-content" with exact phrase
And click on the element with id as "structure_government"
And click on the 1st "No" inside div with class "ant-select-item-option-content" with exact phrase
And click on the element with id as "situated_near_canal"
And click on the 1st "No" inside div with class "ant-select-item-option-content" with exact phrase
And click on the element with id as "situated_near_ht_lines"
And click on the 1st "No" inside div with class "ant-select-item-option-content" with exact phrase
And click on the element with id as "seismic_zone"
And click on the 1st "III" inside div with class "ant-select-item-option-content" with exact phrase
And click on the element with id as "locality_type"
And click on the 1st "Medium" inside div with class "ant-select-item-option-content" with exact phrase
And click on the element with id as "marketability"
And click on the 1st "Bad" inside div with class "ant-select-item-option-content" with exact phrase
And click on the element with id as "any_hazard"
And click on the 1st "No" inside div with class "ant-select-item-option-content" with exact phrase
And wait 2 sec
#enter "100" into "Please Enter Distance  "
#enter "200" into "Please Enter  Distance  "
And enter "23 KALYNI DESHMUKH" into "Please Enter Market Feedback"
And wait 2 sec
And click on the element with id as "commercial_portion_witnessed"
And click on the 1st "31 to 40%" inside div with class "ant-select-item-option-content" with exact phrase
And click on the element with id as "no_of_kitchen"
And click on the 1st "1" inside div with class "ant-select-item-option-content" with exact phrase
And click on the element with id as "risk_of_demolition"
And click on the 1st "Low" inside div with class "ant-select-item-option-content" with exact phrase
And click on the element with id as "recent_demolition"
And click on the 1st "No" inside div with class "ant-select-item-option-content" with exact phrase
#click on the element with id as "before_years"
#this case open only when recent_demolition is Yes
#click on the 1st "" inside div with class "ant-select-item-option-content" with exact phrase
And click on the element with id as "property_affected"
And click on the 1st "No" inside div with class "ant-select-item-option-content" with exact phrase
#click on the element with id as "road_widening"
#this case open only when property_affected is Belong to Yes
#click on the 1st "No" inside div with class "ant-select-item-option-content" with exact phrase
And click on the element with id as "property_negative_area"
And click on the 1st "No" inside div with class "ant-select-item-option-content" with exact phrase
And click on the element with id as "lift_available"
And click on the 1st "No" inside div with class "ant-select-item-option-content" with exact phrase
And click on the element with id as "house_delivery_agency"
And click on the 1st "CO-OPERATIVE AGENCY" inside div with class "ant-select-item-option-content" with exact phrase
And enter "8" into "Please Enter Distance From Branch"
And enter "60" into "Please Enter Carpet Area Measured"
And enter "35" into "Please Enter Existing Carpet Area Measured"
And wait 3 sec
And click on the element with id as "as_per_approved"
And click on the 1st "No" inside div with class "ant-select-item-option-content" with exact phrase
And click on the element with id as "dcr_norms"
And click on the 1st "No" inside div with class "ant-select-item-option-content" with exact phrase
And enter "3" into "Please Enter Number Of Floors Permitted"
And enter "0" into "Please Enter Number Of Floors Constructed"
And enter "0" into "Please Enter FSI Achieved"
And enter "YES PERMITED" into "Please Enter Construction Permission Number"
And enter "0" into "Please Enter Setback Deviation(%)"
And enter "0" into "Please Enter Vertical Deviation(%)"
And enter "00" into "Please Enter Any Extension In Future"
And click on the element with id as "local_byelaws"
And click on the 1st "COMMISSIONER" inside div with class "ant-select-item-option-content" with exact phrase
And wait 3 sec
And click on the element with id as "collection_status_7"
And click on the 1st "No" inside div with class "ant-select-item-option-content" with exact phrase
And click on the element with id as "collection_status_6"
And click on the 1st "No" inside div with class "ant-select-item-option-content" with exact phrase
And click on the element with id as "collection_status_4"
And click on the 1st "No" inside div with class "ant-select-item-option-content" with exact phrase
And click on the element with id as "collection_status_8"
And click on the 1st "No" inside div with class "ant-select-item-option-content" with exact phrase
And click on the element with id as "collection_status_9"
And click on the 1st "No" inside div with class "ant-select-item-option-content" with exact phrase
And click on the element with id as "collection_status_11"
And click on the 1st "No" inside div with class "ant-select-item-option-content" with exact phrase
And click on the element with id as "collection_status_13"
And click on the 1st "No" inside div with class "ant-select-item-option-content" with exact phrase
And click on the element with id as "collection_status_12"
And click on the 1st "No" inside div with class "ant-select-item-option-content" with exact phrase
And click on the element with id as "collection_status_10"
And click on the 1st "No" inside div with class "ant-select-item-option-content" with exact phrase
And click on the element with id as "collection_status_5"
And click on the 1st "No" inside div with class "ant-select-item-option-content" with exact phrase
And click on the element with id as "collection_status_2"
And click on the 1st "No" inside div with class "ant-select-item-option-content" with exact phrase
And click on the element with id as "collection_status_1"
And click on the 1st "No" inside div with class "ant-select-item-option-content" with exact phrase
And click on the element with id as "collection_status_3"
And click on the 1st "No" inside div with class "ant-select-item-option-content" with exact phrase
And click on the element with id as "overall_status"
And click "{el:Legal_OverallStatus_Positive}"
And enter "Testing Only" into the 2nd "Please Enter Remark"
And click on the element with id as "document_category"
And click on the 1st "Property Technical" inside div with class "ant-select-item-option-content" with exact phrase
And click on the element with id as "document_type"
And click on the 1st "Toilet" inside div with class "ant-select-item-option-content" with exact phrase
And upload file "/Users/mac/Desktop/TechnicalDoc.png" to "input[id='document_path']"
And wait 2 sec
And click on the element with id as "document_category"
And click on the 1st "Property Technical" inside div with class "ant-select-item-option-content" with exact phrase
And click on the element with id as "document_type"
And click on the 1st "Technical Vendor Signature" inside div with class "ant-select-item-option-content" with exact phrase
And upload file "/Users/mac/Desktop/TechnicalDoc.png" to "input[id='document_path']"
And wait 2 sec
And click on the element with id as "document_category"
And click on the 1st "Property Technical" inside div with class "ant-select-item-option-content" with exact phrase
And click on the element with id as "document_type"
And click on the 1st "Bedroom" inside div with class "ant-select-item-option-content" with exact phrase
And upload file "/Users/mac/Desktop/TechnicalDoc.png" to "input[id='document_path']"
And wait 2 sec
And click on the element with id as "document_category"
And click on the 1st "Property Technical" inside div with class "ant-select-item-option-content" with exact phrase
And click on the element with id as "document_type"
And click on the 1st "Elevation" inside div with class "ant-select-item-option-content" with exact phrase
And upload file "/Users/mac/Desktop/TechnicalDoc.png" to "input[id='document_path']"
And wait 2 sec
And click on the element with id as "document_category"
And click on the 1st "Property Technical" inside div with class "ant-select-item-option-content" with exact phrase
And click on the element with id as "document_type"
And click on the 1st "Land Covering Of All Boundaries" inside div with class "ant-select-item-option-content" with exact phrase
And upload file "/Users/mac/Desktop/TechnicalDoc.png" to "input[id='document_path']"
And wait 2 sec
And click on the element with id as "document_category"
And click on the 1st "Property Technical" inside div with class "ant-select-item-option-content" with exact phrase
And click on the element with id as "document_type"
And click on the 1st "In Front Of Property" inside div with class "ant-select-item-option-content" with exact phrase
And upload file "/Users/mac/Desktop/TechnicalDoc.png" to "input[id='document_path']"
And wait 2 sec
And click on the element with id as "document_category"
And click on the 1st "Property Technical" inside div with class "ant-select-item-option-content" with exact phrase
And click on the element with id as "document_type"
And click on the 1st "Approach Road" inside div with class "ant-select-item-option-content" with exact phrase
And upload file "/Users/mac/Desktop/TechnicalDoc.png" to "input[id='document_path']"
And wait 2 sec
And click on the element with id as "document_category"
And click on the 1st "Property Technical" inside div with class "ant-select-item-option-content" with exact phrase
And click on the element with id as "document_type"
And click on the 1st "Commercial Unit" inside div with class "ant-select-item-option-content" with exact phrase
And upload file "/Users/mac/Desktop/TechnicalDoc.png" to "input[id='document_path']"
And wait 2 sec
And click on the element with id as "document_category"
And click on the 1st "Property Technical" inside div with class "ant-select-item-option-content" with exact phrase
And click on the element with id as "document_type"
And click on the 1st "Kitchen" inside div with class "ant-select-item-option-content" with exact phrase
And upload file "/Users/mac/Desktop/TechnicalDoc.png" to "input[id='document_path']"
And wait 2 sec
And click on the element with id as "document_category"
And click on the 1st "Property Technical" inside div with class "ant-select-item-option-content" with exact phrase
And click on the element with id as "document_type"
And click on the 1st "Hall" inside div with class "ant-select-item-option-content" with exact phrase
And upload file "/Users/mac/Desktop/TechnicalDoc.png" to "input[id='document_path']"
And wait 3 sec
And click "Submit" inside span
And wait 5 sec
And click "OK" inside span with exact phrase
And wait 10 sec
{module:LMS_view_details(LAN_value="APP1767368018496")}
And click on the element with class "view_button_loan_list"
And wait 2 sec
And switch to last opened tab
And wait 2 sec
{module:applicationStage_Open}
And wait 2 sec
And click on the element with class "stage_icons" at index 3
And enter "Testing" into "Please Enter Recommendation"
And click on the element with id as "recommendation_status"
And wait 2 sec
And click on the 1st "Positive" inside div with class "ant-select-item-option-content" with exact phrase
And wait 2 sec
And click "OK" inside span with exact phrase
And wait 10 sec


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
#complete code of legal start from here 
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

#Rcu And Principal new code 

@rcu
Scenario: Rcu scenario
{module:LMS_Login(lms_username="rohit.shinde@vastuhfc.com", lms_password="Vastu@123")}
{module:LMS_view_details(LAN_value="APP1767368018496")}
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
And click "Rohit Shinde (07690)"
And click on the element with id as "type_of_check"
And wait 2 sec
And click on the 1st "Documents" inside div with class "ant-select-item-option-content" with exact phrase
And wait 3 sec
And click on the element with id as "dropdown_70"
#click "{el:Rcu_Applicant_Sampling_Dropdown}"
And click on the 1st "Sampled" inside div with class "ant-select-item-option-content" with exact phrase
#click "Sampled"
And wait 2 sec
And click on the element with id as "add_cc"
And wait 2 sec
#type "rohit.shinde@vastuhfc.com"
And wait 3 sec
And click "Please Enter Remark"
And enter "Doing for the testing purpose" into "Please Enter Remark"
#skiping the attachment checkbox for due to multiple checkbox(please add all the atachment later)
And click on the element with class "ant-checkbox-input" at index 1
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
# complete code start after this line
{module:applicationStage_Open}
And wait 2 sec
And click on the 2nd "Initiated" inside span with exact phrase 
And wait 2 sec
And switch to last opened tab
And wait 2 sec
And enter "Verified" into "Please Enter Remark"
#click on the element with id as "status_27"
And click "Search To Select"
And click on the 1st "Clear" inside div with class "ant-select-item-option-content" with exact phrase
#click on the element with id as "field_verification_status_27"
And click "Search To Select"
And click on the 1st "Local" inside div with class "ant-select-item-option-content" with exact phrase
And enter "Document mismatch" into the 2nd "Please Enter Remark"
#click on the element with id as "status_26"
And click "Search To Select"
And click on the 1st "Failed" inside div with class "ant-select-item-option-content" with exact phrase
#click on the element with id as "field_verification_status_26"
And click "Search To Select"
And click on the 1st "Local" inside div with class "ant-select-item-option-content" with exact phrase
And enter "Profile verified" into the 3rd "Please Enter Remark"
#click on the element with id as "status_25"
And click "Search To Select"
And click on the 1st "Clear" inside div with class "ant-select-item-option-content" with exact phrase
#click on the element with id as "field_verification_status_25"
And click "Search To Select"
And click on the 1st "Local" inside div with class "ant-select-item-option-content" with exact phrase
And click on the element with id as "overall_status"
And click on the 1st "Failed" inside div with class "ant-select-item-option-content" with exact phrase
And click on the element with id as "sub_status"
And click on the 1st "Source" inside div with class "ant-select-item-option-content" with exact phrase
And enter "Tetsing overall status" into "Please Enter Overall Remark"
# Just commented bcz its not mandatory field 
#click "Add Manual Deviation"
#click on the element with id as "deviation"
#click on the 1st "RCU - Low Risk(Microhousing)" inside div with class "ant-select-item-option-content" with exact phrase
#enter "Just Testing" into "Please Enter Description"
#enter "Testing mitigates" into "Please Enter Mitigates"
#click on the 2nd "Submit" inside span
And wait 3 sec
And click on the element with id as "document_category"
And click on the 1st "RCU" inside div with class "ant-select-item-option-content" with exact phrase
And check that screen contains "Document Type"
And click on the element with id as "document_type"
And click "Rcu Doc"
And wait 2 sec
And upload file "/Users/mac/Desktop/NewDoc.png" to "input[id='document_path']"
And wait 2 sec
And enter "Testing Rcu Completion using this data" into "Please Enter Complete Remark"
And wait 3 sec
And click "Submit" inside span
And wait 5 sec
And click "OK" inside span with exact phrase
And wait 5 sec
{module:LMS_view_details(LAN_value="APP1767368018496")}
And click on the element with class "view_button_loan_list"
And wait 2 sec
And switch to last opened tab
And wait 2 sec
{module:applicationStage_Open}
And wait 2 sec
And click "{el:Rcu_Complete_Icon}"
And wait 2 sec
And click "OK" inside span with exact phrase
And wait 3 sec


@principal
Scenario: Principal Aproval
{module:LMS_Login(lms_username=""kalyani.deshmukh@vastuhfc.com", lms_password="Vastu@123")}
{module:LMS_view_details(LAN_value="APP1767368018496")}
And click on the element with class "view_button_loan_list"
And wait 2 sec
And switch to last opened tab
And click on the element with id as "rc_select_0"
And wait 2 sec
And click on the 1st "In Principal Approval" inside div with class "ant-select-item-option-content" with exact phrase
And click on the element with class "go_button_div"
And click on the element with id as "assigned_to"
And click on the 1st "Kalyani Deshmukh (09048)" inside div with class "ant-select-item-option-content" with exact phrase
And wait 2 sec
And click "Please Enter Remark"
And enter "Doing for the testing purpose" into "Please Enter Remark"
And click on the 2nd "Initiate" inside span
And wait 5 sec
{module:applicationStage_Open}
And wait 2 sec 
And click on the element with class "stage_icons" at index 9 
And wait 3 sec 
And click on the 2nd "Please Select" 
And wait 2 sec
And click on the 1st "Approved" inside div with class "ant-select-item-option-content" with exact phrase 
And wait 2 sec
And click "Submit" inside span 
And wait 5 sec 
And enter "Testing" into "Please Enter Remark" 
And wait 2 sec 
And click on the 3rd "Submit" inside span with exact phrase 
And wait 5 sec 