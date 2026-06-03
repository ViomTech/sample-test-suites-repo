Feature: New feature

@try
Scenario: Signed in upload scenario
#click "MY JOURNEY"
And click "{el:JumanProjectList}"
And click "Go to Unit"
#click "Add Unit"
#click "{el:GotoUnit1}"
#click "{el:GotoUnit2}"
#click "{el:GotoUnit3}"
And wait 2 sec
And click "Profile"
And wait 5 sec

#Documents upload
#check that screen contains "To complete the process, please provide the necessary documents"
#check that "Personal Details" background color is "Green"
#check that "Residency Information" background color is "Green"
#wait 1 sec
#check that "Professional Information" background color is "Green"
#check that "PEP" background color is "Green"
#check that "Identification Details" background color is "Green"
And wait 1 sec
And click "To complete the process, please provide the necessary documents"
And wait 3 sec
And check that screen contains "{el:docUpload}" and save it as "upload1" and continue
#check that "{el:docUpload}" foreground color is "Red" and save it as "upload1" and continue
  And wait 5 sec
  And if (upload1 Equals true)
    And upload file "test-data/files/try.png" to "{el:docUpload}"
    And wait 45 sec
  And endif
  And wait 10 sec

And check that screen contains "{el:docUpload}" and save it as "upload2" and continue
#check that "{el:upload2}" foreground color is "Red" and save it as "upload2" and continue
  And wait 5 sec
  And if (upload2 Equals true)
    And upload file "test-data/files/try.png" to "{el:upload2}"
    And wait 45 sec
  And endif

And check that screen contains "{el:docUpload}" and save it as "upload3" and continue  
#check that "{el:upload3}" foreground color is "Red" and save it as "upload3" and continue
  And wait 5 sec
  And if (upload3 Equals true)
    And upload file "test-data/files/try.png" to "{el:upload3}"
    And wait 45 sec
  And endif

And wait 5 sec
And click "{el:acceptTermsDocScreen}"
And click "{el:acceptPolicyDocScreen}"
And wait 3 sec
And click "Continue"
And wait 3 sec



#Delaration
And check that screen contains "We need your confirmation to complete the process"
And check that "Personal Details" background color is "Green"
And wait 1 sec
And check that "Residency Information" background color is "Green"
And check that "Professional Information" background color is "Green"
And wait 1 sec
And check that "PEP" background color is "Green"
And check that "Identification Details" background color is "Green"
And wait 1 sec
And check that "Document Upload" background color is "Green"
And click on the element to the left of "I Agree" with exact phrase
And wait 2 sec
And click "Continue"
And wait 3 sec

#Review and Submit
And check that screen contains "Please review the information you’ve provided. Once you confirm that everything is accurate, sign to complete the process"
#check that "Personal Details" background color is "Green"
And check that "Residency Information" background color is "Green"
And check that "Professional Information" background color is "Green"
And wait 1 sec
And check that "PEP" background color is "Green"
And check that "Identification Details" background color is "Green"
And check that "Document Upload" background color is "Green"
And wait 1 sec
And check that "Declaration" background color is "Green"
And read value from field on the below of "First Name*" and save it as "reviewFirstNm" with exact phrase
And print value of "{reviewFirstNm}"
And check that variable {reviewFirstNm} is equals to "{firstName}"
And read value from field on the below of "Last Name*" and save it as "reviewLastNm" with exact phrase
And print value of "{reviewLastNm}"
And check that variable {reviewLastNm} is equals to "{lastName}"
And read value from field on the below of "Email*" and save it as "reviewEmail" with exact phrase
And print value of "{reviewEmail}"
And check that variable {reviewEmail} is equals to "{username}"
And click on the element to the left of "I hereby confirm, to the best of my knowledge and belief, that the information contained in this form and any attachments hereto is true and correct " with exact phrase
And wait 5 sec
And click "Continue"
And check that screen contains "In progress"

