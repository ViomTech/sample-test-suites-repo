Feature: API Test

@apitry
Scenario: API Test
And wait 1 sec
And Invoke api "api2" from collection "col2"
And print value of "API_response1"
And Invoke collection "collection_test1.json"
And print value of "API_response2"