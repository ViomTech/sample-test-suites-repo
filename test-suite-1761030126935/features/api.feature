Feature: API Vastu
@api
  Scenario: First scenario
    # Start typing steps below.
    When compose a post request to "https://test-aws-web.vastucorp.com/api/sales_timesheet_view" with headers
      And | Content-Type   | application/json   |
      And | stagingtoken   | 9e107d9d372bb6826bd81d3542a419d6 |
    And with the below JSON request
    And """
    And {
      And "username": "user_15@vastuhfc.com",
      And "password": "123456",
      And "deviceid": "b401d05b86dd2f95",
      And "version": "3.2.9",
      And "app_name": "pulse_app",
      And "userid": "15" 
    And }
    And """
    And execute and save the response as "API_response"
    And check that variable {API_response} is equals to "completed" with exact phrase

@sampleapi
Scenario: API sample    
And compose a post request to "https://jsonplaceholder.typicode.com/posts" with headers
And | Content-Type   | application/json   |
And | stagingtoken   | 9e107d9d372bb6826bd81d3542a419d6 |
 And with the below JSON request
And """
And {
 And "title": "Test API Call",
And "body": "This is a test post request body.",
And "userId": 101
And }
And """
And execute and save the response as "API_response"
And check that response {API_response} has "201" as status code