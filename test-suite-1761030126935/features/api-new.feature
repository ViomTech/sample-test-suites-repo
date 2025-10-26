Feature: New feature

@testapiamit
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