@lms_api @regression
Feature:vastu_api feature

@apiTest
Scenario: Auth_token scenario
And compose a post request to "https://lmspretest.vastucorp.com/api/v1/userauth/login" with headers
|Content-Type|application/json|
And with the below JSON request
"""
{
"email": "kalyani.deshmukh@vastuhfc.com",
"password": "Vastu@123",
"remember": true,
"latitude": 10.3022592,
"longitude": 76.873728,
"time_sheet_event_type": "MTSETNNH" 
}
"""
And execute and save the response as "api__response"
And print value of "{api__response}"
And check that response {api__response} has "200" as status code
#read value from "$.data.access" and save it as "AUTH_TOKEN"
And extract value from API response {api__response} at "$.data.access" and save it as "authToken"
And print value of "authToken"
