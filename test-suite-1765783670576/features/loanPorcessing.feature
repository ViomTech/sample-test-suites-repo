@rcuRegression
Feature: Credit feature

Scenario: Rcu scenario
{module:LMS_Login(lms_username="gaurav.g@vastuhfc.com", lms_password="Vastu@123")}
{module:LMS_view_details(LAN_value="value")}
{module:applicationStage_Open}
# RCU Initiation
And select "RCU" from "Select stage dropdown"
