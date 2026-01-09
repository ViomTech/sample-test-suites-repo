@lms_api @regression
Feature:vastu_api feature

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
And print value of "{api__response}"
And check that response {api__response} has "200" as status code
And read value from "$.data.access" and save it as "AUTH_TOKEN"

@apiCustomerDetails
Scenario: customer_details scenario
And compose a patch request to "https://lmsstaging.vastucorp.com/api/v1/customer/customer-detail/8155" with headers
|Content-Type|application/json|
|Accept|*/*|
|Authorization|Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNzY3OTUxMzI2LCJpYXQiOjE3Njc5NDc3MjYsImp0aSI6IjA0MWIzY2QxZTcwNTQ4OTc5MTNkZmYwOTkwMWYwY2I1IiwidXNlcl9pZCI6ODJ9.bmg_X2VLSOu--B-UCNmQJRofYGdgzppXgLfZS5I47E0|
And with the below JSON request
"""
{
    "date_of_birth": "1960-02-15",
    "gender": "Male",
    "marital_status": "Single",
    "email": "dkalyani@gmal.com",
    "relation_with_applicant": 37,
    "is_disabled": false,
    "is_ex_servicemen": false,
    "caste_category": 5,
    "place_of_birth": "Bangalore",
    "nationality": "Indian",
    "religion": "Hinduism",
    "university": "Mumbai University",
    "father_name": "Pradeep",
    "spouse_name": "",
    "education": "Graduate",
    "family_type": "Joint",
    "number_of_dwelling_unit": "2",
    "phone_country_code": "91",
    "phone_number": "07350828765",
    "mobile_country_code": "91",
    "mobile_number": "8329833901",
    "alt_mobile_country_code": "91",
    "alt_mobile_number": "7350827401",
    "document_detail": [],
    "existing_document": []

}
"""
And execute and save the response as "api__response"
And check that response {api__response} has "200" as status code

@apiCustomerAddressDetails
Scenario: customer_details scenario
And compose a patch request to "https://lmsstaging.vastucorp.com/api/v1/customer/customer-address-detail/15150" with headers
|Content-Type|application/json|
|Accept|*/*|
|Authorization|Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNzY3OTUxMzI2LCJpYXQiOjE3Njc5NDc3MjYsImp0aSI6IjA0MWIzY2QxZTcwNTQ4OTc5MTNkZmYwOTkwMWYwY2I1IiwidXNlcl9pZCI6ODJ9.bmg_X2VLSOu--B-UCNmQJRofYGdgzppXgLfZS5I47E0|
And with the below JSON request
"""
{
"address_line_1": "No.73, N.S.COMPLEX",
 "address_line_2": "B,M,ROAD",
 "landmark": "THANNIRUHALLA",
 "pincode": 11314,
 "city": 5276,
 "taluka": "hssn",
 "district": 419,
 "state": 18,
 "country": 1,
 "resident_from": "2020",
 "ownership_type": "Company Provided",
 "document_detail": [
{
  "document_category": 2,
  "document_type": 42,
  "document_number": null,
  "is_watermark_required": true,
  "is_masking_required": false,
  "latitude": 18.5574028,
 "longitude": 73.9283005
  }
 And ],
 "existing_document": []
}
"""
And execute and save the response as "api__response"
And check that response {api__response} has "200" as status code

@apiSelfEmployed
Scenario: customer_details scenario
And compose a patch request to "https://lmsstaging.vastucorp.com/api/v1/customer/self-employed/1950" with headers
|Content-Type|application/json|
|Accept|*/*|
|Authorization|Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNzY3OTUxMzI2LCJpYXQiOjE3Njc5NDc3MjYsImp0aSI6IjA0MWIzY2QxZTcwNTQ4OTc5MTNkZmYwOTkwMWYwY2I1IiwidXNlcl9pZCI6ODJ9.bmg_X2VLSOu--B-UCNmQJRofYGdgzppXgLfZS5I47E0|
And with the below JSON request
"""
{
    "profession": 2,
    "profession_classification": 6,
    "organization_name": "CIDCO PVT LTD",
    "industry_type": 1,
    "line_of_work": 7,
    "total_business_experience": "5.0",
    "negative_profile": true,
    "number_of_employees": 50,
    "net_income": 45000,
    "nature_of_employment": 2,
    "manual_scavenger": true,
    "business_legal_structure": "Society",
    "type_of_business": "Family Business",
    "years_in_current_business": "9.0",
    "business_seasonality": "Non-Seasonal",
    "organization_nature": 8,
    "year_of_start": "2020",
    "business_registration_proof": "Old ITRs More Than 3",
    "ownership_of_business_premises": "Company",
    "monthly_sale": "1100000.00",
    "monthly_expenses": "110000.00",
    "estimated_gross_margin": "35.00",
    "net_margin_earned": "35.00",
    "occupation": 7,
    "income_as_per_kachha_record": "25.00",
    "customer_address": {
        "id": 16318,
        "address_line_1": "RD Circle Karmayogi Nagar Nashik",
        "address_line_2": "RD Circle Karmayogi Nagar Nashik",
        "landmark": "Chengicherla village",
        "taluka": "Hassan",
        "pincode": 8356,
        "latitude": 18.5246091,
        "longitude": 73.8786239
    },
    "document_detail": [],
    "existing_document": []
}
"""
And execute and save the response as "api__response"
And check that response {api__response} has "200" as status code