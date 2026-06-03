@ict2ndsignedusertilldocs
Feature: New ICTReD feature

Scenario: Sign in as registered user
And wait 2 sec
And check that screen contains "PAYMENT"
And click "{el:JumanProjectList}"
And wait 1 sec
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
    And wait 1 sec
  And endif

#Tell us more about yourself 
And wait 5 sec
And check that screen contains "Tell us more about yourself"
And click "Tell us more about yourself"
And click "Individual"
And click "Continue"
And wait 2 sec

#Complete profile
And check that screen contains "Complete your profile"
And check that button "Continue" is disabled with exact phrase
And read value from field on the below of "First Name*" and save it as "reviewFirstNm" with exact phrase
And print value of "{reviewFirstNm}"
And check that variable {reviewFirstNm} is equals to "{firstName}"
And read value from field on the below of "Last Name*" and save it as "reviewLastNm" with exact phrase
And print value of "{reviewLastNm}"
And check that variable {reviewLastNm} is equals to "{lastName}"
And read value from field on the below of "Email*" and save it as "reviewEmail" with exact phrase
And print value of "{reviewEmail}"
And check that variable {reviewEmail} is equals to "{username}"
And read value from "{el:signup-phone}" and save it as "phoneN"
And print value of "{phoneN}"
And check that variable {phoneN} is equals to "{phone}"
And enter "{dob}" into field on the below of "Date of Birth" with exact phrase
And scroll down until screen contains "Country of Birth" with exact phrase
#enter "{country}" into field on the below of "Country of Birth" with exact phrase
And read value from field on the below of "Country of Birth" and save it as "countryOfB" with exact phrase
And print value of "{countryOfB}"
And check that variable {countryOfB} is equals to "{country}"
And wait 2 sec
#enter "{country}" into field on the below of "Nationality" with exact phrase
And read value from field on the below of "Nationality" and save it as "nationality" with exact phrase
And print value of "{nationality}"
And check that variable {nationality} is equals to "{country}"
And wait 2 sec
#click "English"
And click "Email"
And click "2 Bedroom"
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
And click "Back"
And wait 3 sec
And read value from field on the below of "First Name*" and save it as "reviewFirstNm" with exact phrase
And print value of "{reviewFirstNm}"
And check that variable {reviewFirstNm} is equals to "{firstName}"
And read value from field on the below of "Last Name*" and save it as "reviewLastNm" with exact phrase
And print value of "{reviewLastNm}"
And check that variable {reviewLastNm} is equals to "{lastName}"
And read value from field on the below of "Email*" and save it as "reviewEmail" with exact phrase
And print value of "{reviewEmail}"
And check that variable {reviewEmail} is equals to "{username}"
And read value from "{el:signup-phone}" and save it as "phoneN"
And print value of "{phoneN}"
And check that variable {phoneN} is equals to "{phone}"
And enter "{dob}" into field on the below of "Date of Birth" with exact phrase
And wait 1 sec
And scroll down until screen contains "Country of Birth" with exact phrase
And read value from field on the below of "Country of Birth" and save it as "countryOfB" with exact phrase
And print value of "{countryOfB}"
And check that variable {countryOfB} is equals to "{country}"
And wait 2 sec
And read value from field on the below of "Nationality" and save it as "nationality" with exact phrase
And print value of "{nationality}"
And check that variable {nationality} is equals to "{country}"
And wait 3 sec


