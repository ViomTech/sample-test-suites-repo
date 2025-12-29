@lms_api @regression
Feature:vastu_api feature

@apireg
Scenario: Auth_token scenario
And compose a post request to "https://lmsstaging.vastucorp.com/api/v1/userauth/login" with headers
|Content-Type|application/json|
|Accept|*/*|
And with the below JSON request
"""
{
"email": "gaurav.g@vastuhfc.com",
"password": "Vastu@123",
"remember": true,
"latitude": 10.3022592,
"longitude": 76.873728,
"time_sheet_event_type": "MTSETNNH" 
}
"""
And execute and save the response as "api__response"
And check that response {api__response} has "200" as status code
And read value from "$.data.access" and save it as "AUTH_TOKEN"
