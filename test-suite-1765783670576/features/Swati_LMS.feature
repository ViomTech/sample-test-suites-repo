Feature: Loan Proccessing

Scenario:final approval scenario
{module:LMS_Login(lms_username="rohit.shinde@vastuhfc.com", lms_password="Vastu@123")}
{module:LMS_view_details(LAN_value="APP1767368018467")}
And click on the element with class "view_button_loan_list"
And wait 2 sec
And switch to last opened tab
#initiation
And click on the element with id as "rc_select_0"
And wait 2 sec
And click on the 1st "Final Approval" inside div with class "ant-select-item-option-content" with exact phrase
And wait 3 sec
And click on the element with class "go_button_div"
And wait 2 sec
And click on the element with id as "assigned_to"
And wait 3 sec
And enter "Kalyani Deshmukh"
And wait 2 sec
And click "Kalyani Deshmukh" inside div with class "ant-select-item-option-content"
And wait 3 sec
And enter "Testing" into "Please Enter Remark"
And wait 2 sec
And click on the 2nd "Initiate"
And wait 10 sec

@final
#complete
Scenario:final approval scenario
{module:LMS_Login(lms_username="rohit.shinde@vastuhfc.com", lms_password="Vastu@123")}
{module:LMS_view_details(LAN_value="APP1767368018467")}
And click on the element with class "view_button_loan_list"
And wait 2 sec
And switch to last opened tab
And wait 4 sec
{module:logOut_LogIn(userName="kalyani.deshmukh@vastuhfc.com", password="Vastu@123")}
And wait 5 sec
{module:applicationStage_Open}
And wait 5 sec
And click on the element with class "stage_icons" at index 2
And wait 5 sec
And click on the element with id as "loan_status"
And wait 3 sec
And click "Approved" inside div with class "ant-select-item-option-content"
And wait 3 sec
And click on the 2nd "{el:rateApprovalSubmit}"
And wait 3 sec
And click on the element with id as "skip_imd"
And wait 2 sec
And click "Yes" inside div with class "ant-select-item-option-content"
And wait 2 sec 
And click on the element with id as "skip_imd_reason"
And enter "testing"
And wait 3 sec
And click "{el:finalApprovalSubmit}"
And wait 5 sec
  