Feature: New feature

@apitry
Scenario: verify log in enablement
And wait 1 sec
And Invoke api "api2" from collection "col2" and save the response as "API_response1"
And print value of "API_response1"
And Invoke collection "col2" and save the response as "API_response2"
And print value of "API_response2"