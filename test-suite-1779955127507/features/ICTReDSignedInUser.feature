@ictsignedusertilldocs
Feature: New ICTReD feature

Scenario: Sign in as registered user
And wait 2 sec
And check that screen contains "PAYMENT"
And check that screen contains "MY JOURNEY" and save it as "myjourney" and continue
  And wait 1 secs
  And if (myjourney Equals true)
    And click "MY JOURNEY"
    And wait 1 sec
  And endif
  And if (myjourney Equals false)
    And click "{el:JumanProjectList}"
    And wait 1 sec
  And endif

#click "Go to Unit"
And click "Add Unit"
#click "{el:GotoUnit1}"
#click "{el:GotoUnit2}"
#click "{el:GotoUnit3}"
And wait 5 sec
And click "Profile"

And check that screen contains "Training Video" and save it as "trainingVideo" and continue
  And wait 2 secs
  And if (trainingVideo Equals true)
    And click "close"
    And wait 2 sec
  And endif

#Tell us more about yourself 
And wait 5 sec
And check that screen contains "Tell us more about yourself" and save it as "tellus" and continue
  And wait 2 secs
  And if (tellus Equals true)
    And click "Tell us more about yourself"
    And click "Individual"
    And click "Continue"
    And wait 3 sec
  And endif

#Complete profile
And check that screen contains "Complete your profile"
And check that button "Continue" is disabled with exact phrase
And enter "{firstName}" into field on the below of "First Name" with exact phrase
And enter "{middleName}" into field on the below of "Middle Name" with exact phrase
And enter "{lastName}" into field on the below of "Last Name" with exact phrase
And enter "{username}" into field on the below of "Email" with exact phrase
And enter "{phone}" into "{el:signup-phone}"
And enter "{dob}" into field on the below of "Date of Birth" with exact phrase
And scroll down until screen contains "Country of Birth" with exact phrase
And enter "{country}" into field on the below of "Country of Birth" with exact phrase
And wait 2 sec
And enter "{country}" into field on the below of "Nationality" with exact phrase
And wait 2 sec
And click "English"
And click "Phone Call"
And click "3 Bedroom"
And wait 2 sec
And check that button "Continue" is enabled with exact phrase
And click "Continue"
And wait 3 sec



#Residency Information
And check that screen contains "Please provide your current residency details. Specify if you are a UAE resident to help us tailor your experience."
And click "Yes"
And check that "Personal Details" background color is "Green"
And enter "Dubai" into field on the below of "City of Residence" with exact phrase
And wait 1 sec
And enter "Motor city" into field on the below of "Street/Area Name" with exact phrase
And enter "Motor city1" into field on the below of "Building Name/Number" with exact phrase
And enter "135" into field on the below of "Villa or Apartment Number" with exact phrase
#click "Back"
#read value from field on the below of "First Name*" and save it as "firstNm" with exact phrase
#print value of "{firstNm}"
#check that variable {firstNm} is equals to "Amit"
And wait 5 sec
And click "Villa or Apartment Number"
And wait 5 sec
And click "continue"
And wait 3 sec


#Professional Information
And wait 2 sec
And check that screen contains "Please provide details about your professional background"
And check that "Personal Details" background color is "Green"
And check that "Residency Information" background color is "Green"
And wait 1 sec
And enter "Investment" into field on the below of "Occupation" with exact phrase
And enter "Inheritance" into field on the below of "Source of Fund" with exact phrase
And wait 1 sec
And click "Source of Funds"
And wait 1 sec
And click "Continue"
And wait 3 sec

#Politically Exposed Person
And check that screen contains "Politically Exposed Person"
And check that "Personal Details" background color is "Green"
And wait 1 sec
And check that "Residency Information" background color is "Green"
And check that "Professional Information" background color is "Green"
And wait 3 sec
And click "Continue"
And wait 3 sec


#Identification Details
And check that screen contains "Please provide your identification details to prove your identity"
And check that "Personal Details" background color is "Green"
And wait 1 sec
And check that "Residency Information" background color is "Green"
And check that "Professional Information" background color is "Green"
And check that "PEP" background color is "Green"
And enter "{passport}" into field on the below of "Number*" with exact phrase
And enter "20240711" into field on the below of "Issue Date*" with exact phrase
And enter "20340710" into field on the below of "Expiry Date*" with exact phrase
And enter "Dubai" into field on the below of "Passport Issuance Place*" with exact phrase
And enter "{emiratesID}" into field on the below of "ID Number*" with exact phrase
And wait 2 sec
And press TAB
And type "20240811"
And press TAB
And press TAB
And type "20340810"
And wait 1 sec
And click "Continue"
And wait 5 sec

#Documents upload
And check that screen contains "To complete the process, please provide the necessary documents"
And check that "Personal Details" background color is "Green"
And check that "Residency Information" background color is "Green"
And wait 1 sec
And check that "Professional Information" background color is "Green"
And check that "PEP" background color is "Green"
And check that "Identification Details" background color is "Green"
And wait 3 sec

