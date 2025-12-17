@rcuRegression
Feature: Credit feature

Scenario: Rcu scenario
{module:LMS_Login(lms_username="gaurav.g@vastuhfc.com", lms_password="Vastu@123")}
{module:LMS_view_details(LAN_value="value")}
{module:applicationStage_Open}
# RCU Initiation
And select "RCU" from "Select stage dropdown"
And click "Go"
And check "Attach Application Form"
And select value from "Type dropdown"
And click "internal"
And select "internal RCU Manager" from "RCU Manager dropdown"
And select value from "Type of Check dropdown"
And type value into "To"
And type value into "CC"
And type value into "Add CC"
And type value into "Remark"
And add "Attachment"
And upload "Documents"
And click "Initiate"
And check that screen contains "RCU initiation successfully"

# Verify RCU Initiated
And go to "Application Stages"
And check that screen contains RCU Status "Initiated"
And click "Initiated"
And check that screen contains "RCU Valuation Report"

# RCU Completion
And go to "RCU Status"
And type value into "Remark Field"
And select value from "Status dropdown"
And select value from "Field Verification Status dropdown"
And select "Deviation"
And enter details into "Property picture And other documents"
And select value from "Overall Status / Conclusion dropdown"
And type value into "Remark"
And click "Submit"
And click "OK"

# Verify RCU Completed
And check that screen contains RCU Status "Completed"