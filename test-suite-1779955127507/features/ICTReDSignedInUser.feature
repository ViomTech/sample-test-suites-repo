@ictredsigneduser
Feature: New feature

@try
Scenario: Sign in as registered user
And wait 1 sec
And check that screen contains "PAYMENT"
And click "{el:JumanProjectList}"
And click "{el:GotoUnit1}"
#click "{el:GotoUnit3}"
#click "{el:GotoUnit3}"
#click "Go to Unit"
And wait 2 sec
And click "Profile"
And wait 2 sec
And check that screen contains "Training Video" and save it as "flagtnc" and continue
  And wait 2 secs
  And if (flagtnc Equals true)
    And click "close"
  And endif
And click "{el:individualBTN}"
And click "Individual"
#click "Continue"
#wait 2 sec
And check that screen contains "Complete your profile"
#click on the element to the below of "First Name*" with exact phrase
#type "{firstName}"
And enter "{firstName}" into field on the below of "First Name" with exact phrase
And click on the element to the below of "Middle Name"
And type "{middleName}"
#enter "{middleName}" into field on the below of "Middle Name" with exact phrase
And click on the element to the below of "Last Name"
And type "{lastName}"
#enter "{lastName}" into field on the below of "Last Name" with exact phrase
And click on the element to the below of "Email"
And type "{username}"
#enter "{username}" into field on the below of "Email" with exact phrase
And enter "{phone}" into "{el:signup-phone}"
And click on the element to the below of "Date of Birth"
And type "19880419"
#enter "19880419" into field on the below of "Date of Birth" with exact phrase
And click on the element to the below of "Country of Birth"
And type "India"
#enter "India" into field on the below of "Country of Birth" with exact phrase
And click "{el:IndiaFromList}"
And click on the element to the below of "Nationality"
And type "India"
#enter "India" into field on the below of "Nationality" with exact phrase
And click "{el:IndiaFromList}"
And click "English"
And click "SMS"
And click "3 Bedroom"
And wait 2 sec
#click "Continue"



#Residency Information
And check that screen contains "Please provide your current residency details. Specify if you are a UAE resident to help us tailor your experience."
And click "Yes"
And click on the element to the below of "City of Residence"
And enter "Dubai" into field on the below of "City of Residence" with exact phrase
And click "{el:DubaiFromList}"
And click on the element to the below of "Street/Area Name"
And enter "Dubailand" into field on the below of "Street/Area Name" with exact phrase
And click on the element to the below of "Building Name/Number"
And enter "Dubailand3" into field on the below of "Building Name/Number" with exact phrase
And click on the element to the below of "Villa or Apartment Number"
And enter "123" into field on the below of "Villa or Apartment Number" with exact phrase
And wait 2 sec
And click "continue"



#Professional Information
And check that screen contains "Please provide details about your professional background"
And click on the element to the below of "Occupation"
And enter "Investment" into field on the below of "Occupation" with exact phrase
And click "{el:InvestmentFromList}"
And click on the element to the below of "Source of Funds"
And enter "Inheritance" into field on the below of "Source of Fund" with exact phrase
And click "{el:individual_form-source_of_fundsFromList}"
And wait 1 sec
And click "Continue"


#Politically Exposed Person
And check that screen contains "Politically Exposed Person"
And wait 1 sec
And click "Continue"



#Identification Details
And wait 2 sec
And check that screen contains "Please provide your identification details to prove your identity"
And click on the element to the below of "Number*"
And enter "Z8742I9" into field on the below of "Number*" with exact phrase
And click on the element to the below of "Issue Date*"
And enter "20260419" into field on the below of "Issue Date*" with exact phrase
And click on the element to the below of "Expiry Date*"
And enter "20360418" into field on the below of "Expiry Date*" with exact phrase
And click on the element to the below of "Passport Issuance Place*"
And enter "Dubai" into field on the below of "Passport Issuance Place*" with exact phrase
And click on the element to the below of "ID Number*"
And enter "784198836475810" into field on the below of "ID Number*" with exact phrase
And wait 2 sec
#click "{el:emiratesIDIssueDate}"
And press TAB
And type "20260419"
#click "{el:emiratesIDExpiryDate}"
And press TAB
And press TAB
And type "20360418"
And wait 1 sec
And click "Continue"


#Documents upload

And check that screen contains "To complete the process, please provide the necessary documents"
And wait 1 sec
And click "To complete the process, please provide the necessary documents"
#hover over "Done" with exact phrase
#upload file "test-data/files/try.png" to the 1st "Reupload"
And click "{el:acceptTermsDocScreen}"
And click "{el:acceptPolicyDocScreen}"
And wait 5 sec
#click "Continue"



#Delaration
And check that screen contains "We need your confirmation to complete the process"
And click on the element to the left of "I Agree" with exact phrase
And wait 5 sec
And click "Continue"


#Review and Submit
#check that screen contains "We need your confirmation to complete the process"
And click on the element to the left of "I hereby confirm, to the best of my knowledge and belief, that the information contained in this form and any attachments hereto is true and correct " with exact phrase
And wait 5 sec