Feature: API Vastu
@api
  Scenario: First scenario
    # Start typing steps below.


  And compose a post request to "" with headers
And with the below JSON request


    When compose a post request to "https://test-aws-web.vastucorp.com/api/sales_timesheet_view" with headers
      | Content-Type   | application/json   |
      | stagingtoken   | 9e107d9d372bb6826bd81d3542a419d6 |
    And with the below JSON request
    """
    {
      "username": "{username}",
      "password": "123456",
      "deviceid": "b401d05b86dd2f95",
      "version": "3.2.9",
      "app_name": "pulse_app",
      "userid": "15" 
    }
    """
    And execute and save the response as "API_response"
    And check that variable {API_response} is equals to "completed" with exact phrase
    And check that API response {API_response} contains "Get a key" at "_meta.cta.label"
    And read value from "read api response and save it" and save it as "capturedValue"
  

@sampleapi
Scenario: API sample    
And compose a post request to "https://jsonplaceholder.typicode.com/posts" with headers
| Content-Type   | application/json   |
| stagingtoken   | 9e107d9d372bb6826bd81d3542a419d6 |
 And with the below JSON request
"""
{
 "title": "Test API Call",
"body": "This is a test post request body.",
"userId": 101
}
"""
And execute and save the response as "API_response"
And check that response {API_response} has "201" as status code