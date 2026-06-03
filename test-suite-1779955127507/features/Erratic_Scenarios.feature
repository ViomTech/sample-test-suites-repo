@erraticscenarios
Feature: ICTReD KYC erratic - Complete profile and Residency

# Module 1: navigates to Complete your profile.
# Module 2 (R* only): completes profile and lands on Residency.
# -----------------------------------------------------------------------------
# SCENARIO INDEX
# CP02  Open Complete profile -> Continue disabled; not on Residency
# CP03  Partial First/Last/Email only -> Continue disabled
# CP04  All text fields, no preference chips -> Continue disabled
# CP05  Chips before mandatory text -> Continue disabled
# CP06  Full valid -> enabled -> clear First Name -> disabled
# CP07  Invalid email not-an-email -> Continue disabled
# CP08  Future DOB 20990101 -> Continue disabled
# CP09  Partial country Ind only -> Continue disabled
# CP10  Enabled only after last chip 3 Bedroom
# CP11  Double-click Continue when enabled -> Residency once
# CP12  Partial fill -> Back -> Tell us more about yourself
# R01   Residency load -> Continue disabled; not Professional
# R02   Yes + Dubai only -> Continue disabled
# R03   Yes only, no address -> Continue disabled
# R04   Full address without Yes -> Continue disabled
# R06   Full address -> enabled -> clear City -> disabled
# R07   Full address + Villa blur -> Continue enabled
# R08   Yes + city then No -> Continue disabled
# R09   Residency Back -> Complete profile, Continue disabled
# R10   Double-click continue when enabled -> Professional once
# -----------------------------------------------------------------------------



Scenario: CP02 Complete profile Continue disabled on load
And check that screen contains "Complete your profile"
And check that button "Continue" is disabled with exact phrase
And check that screen does not contain "Please provide your current residency details"


Scenario: CP03 Complete profile partial text fields only
And check that screen contains "Complete your profile"
And enter "{firstName}" into field on the below of "First Name" with exact phrase
And enter "{lastName}" into field on the below of "Last Name" with exact phrase
And enter "{username}" into field on the below of "Email" with exact phrase
And check that button "Continue" is disabled with exact phrase
And check that screen contains "Complete your profile"
And check that screen does not contain "Please provide your current residency details"


Scenario: CP04 Complete profile all text missing preference chips
And check that screen contains "Complete your profile"
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
And check that button "Continue" is disabled with exact phrase
And check that screen contains "Complete your profile"


Scenario: CP05 Complete profile chips before mandatory text
And check that screen contains "Complete your profile"
And scroll down until screen contains "Country of Birth" with exact phrase
And click "English"
And click "Phone Call"
And click "3 Bedroom"
And wait 2 sec
And check that button "Continue" is disabled with exact phrase
And check that screen contains "Complete your profile"


Scenario: CP06 Complete profile enable then clear First Name
And check that screen contains "Complete your profile"
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
And clear text from "First Name" with exact phrase
And wait 1 sec
And check that button "Continue" is disabled with exact phrase
And check that screen contains "Complete your profile"


Scenario: CP07 Complete profile invalid email
And check that screen contains "Complete your profile"
And enter "{firstName}" into field on the below of "First Name" with exact phrase
And enter "{middleName}" into field on the below of "Middle Name" with exact phrase
And enter "{lastName}" into field on the below of "Last Name" with exact phrase
And enter "not-an-email" into field on the below of "Email" with exact phrase
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
And check that button "Continue" is disabled with exact phrase
And check that screen contains "Complete your profile"


Scenario: CP08 Complete profile future date of birth
And check that screen contains "Complete your profile"
And enter "{firstName}" into field on the below of "First Name" with exact phrase
And enter "{middleName}" into field on the below of "Middle Name" with exact phrase
And enter "{lastName}" into field on the below of "Last Name" with exact phrase
And enter "{username}" into field on the below of "Email" with exact phrase
And enter "{phone}" into "{el:signup-phone}"
And enter "20990101" into field on the below of "Date of Birth" with exact phrase
And scroll down until screen contains "Country of Birth" with exact phrase
And enter "{country}" into field on the below of "Country of Birth" with exact phrase
And wait 2 sec
And enter "{country}" into field on the below of "Nationality" with exact phrase
And wait 2 sec
And click "English"
And click "Phone Call"
And click "3 Bedroom"
And wait 2 sec
And check that button "Continue" is disabled with exact phrase
And check that screen contains "Complete your profile"


Scenario: CP09 Complete profile incomplete country typeahead
And check that screen contains "Complete your profile"
And enter "{firstName}" into field on the below of "First Name" with exact phrase
And enter "{middleName}" into field on the below of "Middle Name" with exact phrase
And enter "{lastName}" into field on the below of "Last Name" with exact phrase
And enter "{username}" into field on the below of "Email" with exact phrase
And enter "{phone}" into "{el:signup-phone}"
And enter "{dob}" into field on the below of "Date of Birth" with exact phrase
And scroll down until screen contains "Country of Birth" with exact phrase
And enter "Ind" into field on the below of "Country of Birth" with exact phrase
And wait 2 sec
And click "English"
And click "Phone Call"
And click "3 Bedroom"
And wait 2 sec
And check that button "Continue" is disabled with exact phrase
And check that screen contains "Complete your profile"


Scenario: CP10 Complete profile Continue enables after last chip
And check that screen contains "Complete your profile"
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
And check that button "Continue" is disabled with exact phrase
And click "3 Bedroom"
And wait 2 sec
And check that button "Continue" is enabled with exact phrase


Scenario: CP11 Complete profile double click Continue when enabled
And check that screen contains "Complete your profile"
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
And double click "Continue"
And wait 3 sec
And check that screen contains "Please provide your current residency details"
And check that screen does not contain "Complete your profile"


Scenario: CP12 Complete profile Back without submit
And check that screen contains "Complete your profile"
And enter "{firstName}" into field on the below of "First Name" with exact phrase
And check that button "Continue" is disabled with exact phrase
And click "Back"
And wait 2 sec
And check that screen contains "Tell us more about yourself"


Scenario: R01 Residency Continue disabled on load
And check that screen contains "Please provide your current residency details"
And check that button "Continue" is disabled with exact phrase
And check that screen does not contain "Please provide details about your professional background"


Scenario: R02 Residency partial address city only
And check that screen contains "Please provide your current residency details"
And click "Yes"
And enter "Dubai" into field on the below of "City of Residence" with exact phrase
And wait 1 sec
And check that button "Continue" is disabled with exact phrase
And check that screen contains "Please provide your current residency details"


Scenario: R03 Residency Yes selected address incomplete
And check that screen contains "Please provide your current residency details"
And click "Yes"
And check that "Personal Details" background color is "Green"
And check that button "Continue" is disabled with exact phrase


Scenario: R04 Residency address fields without Yes
And check that screen contains "Please provide your current residency details"
And enter "Dubai" into field on the below of "City of Residence" with exact phrase
And wait 1 sec
And enter "Motor city" into field on the below of "Street/Area Name" with exact phrase
And enter "Motor city1" into field on the below of "Building Name/Number" with exact phrase
And enter "135" into field on the below of "Villa or Apartment Number" with exact phrase
And check that button "Continue" is disabled with exact phrase


Scenario: R06 Residency enable then clear City of Residence
And check that screen contains "Please provide your current residency details"
And click "Yes"
And enter "Dubai" into field on the below of "City of Residence" with exact phrase
And wait 1 sec
And enter "Motor city" into field on the below of "Street/Area Name" with exact phrase
And enter "Motor city1" into field on the below of "Building Name/Number" with exact phrase
And enter "135" into field on the below of "Villa or Apartment Number" with exact phrase
And click "Villa or Apartment Number"
And wait 5 sec
And check that button "Continue" is enabled with exact phrase
And clear text from "City of Residence" with exact phrase
And wait 1 sec
And check that button "Continue" is disabled with exact phrase


Scenario: R07 Residency blur focus on Villa field
And check that screen contains "Please provide your current residency details"
And click "Yes"
And enter "Dubai" into field on the below of "City of Residence" with exact phrase
And wait 1 sec
And enter "Motor city" into field on the below of "Street/Area Name" with exact phrase
And enter "Motor city1" into field on the below of "Building Name/Number" with exact phrase
And enter "135" into field on the below of "Villa or Apartment Number" with exact phrase
And click "Villa or Apartment Number"
And wait 5 sec
And check that button "Continue" is enabled with exact phrase


Scenario: R08 Residency toggle Yes then No
And check that screen contains "Please provide your current residency details"
And click "Yes"
And enter "Dubai" into field on the below of "City of Residence" with exact phrase
And wait 1 sec
And click "No"
And wait 1 sec
And check that button "Continue" is disabled with exact phrase


Scenario: R09 Residency Back to Complete profile
And check that screen contains "Please provide your current residency details"
And click "Back"
And wait 2 sec
And check that screen contains "Complete your profile"
And check that button "Continue" is disabled with exact phrase


Scenario: R10 Residency double click continue when enabled
And check that screen contains "Please provide your current residency details"
And click "Yes"
And check that "Personal Details" background color is "Green"
And enter "Dubai" into field on the below of "City of Residence" with exact phrase
And wait 1 sec
And enter "Motor city" into field on the below of "Street/Area Name" with exact phrase
And enter "Motor city1" into field on the below of "Building Name/Number" with exact phrase
And enter "135" into field on the below of "Villa or Apartment Number" with exact phrase
And click "Villa or Apartment Number"
And wait 5 sec
And check that button "Continue" is enabled with exact phrase
And double click "continue"
And wait 3 sec
And check that screen contains "Please provide details about your professional background"
And check that screen does not contain "Please provide your current residency details"

# -----------------------------------------------------------------------------
# LARGE / INVALID FIELD DATA - Complete profile
# CP13  Very long First Name
# CP14  Very long Last Name
# CP15  Very long Email
# CP16  Very long Nationality
# CP17  Long name + long email + alphanumeric phone and DOB
# -----------------------------------------------------------------------------


Scenario: CP13 Complete profile very long First Name
And check that screen contains "Complete your profile"
And enter "AlexanderJonathanChristopherMontgomeryWellingtonFairfaxHarringtonBeauregardThaddeusMaximilianBartholomewPercivalReginaldCorneliusFitzwilliamHumphreyAlgernonWentworthPembrokeKensingtonWinchesterHuntingtonAshingtonRemingtonLivingstonCovingtonLexington" into field on the below of "First Name" with exact phrase
And check that button "Continue" is disabled with exact phrase


Scenario: CP14 Complete profile very long Last Name
And check that screen contains "Complete your profile"
And enter "O'BrienSmithJonesWellingtonAndersonMontgomeryFitzgeraldHarringtonPembrokeKensingtonWinchesterHuntingtonAshingtonRemingtonLivingstonCovingtonLexingtonFairfaxBeauregardThaddeusMaximilianBartholomewPercivalReginaldCorneliusFitzwilliamHumphreyAlgernonWentworth" into field on the below of "Last Name" with exact phrase
And check that button "Continue" is disabled with exact phrase


Scenario: CP15 Complete profile very long Email
And check that screen contains "Complete your profile"
And enter "verylongemailprefixforboundarytestingpurposesandvalidationrulesonclientsideandserversidesampleuseraccountname1234567890abcdefghijklmnopqrstuvwxyz@example-domain-for-testing.co.uk" into field on the below of "Email" with exact phrase
And check that button "Continue" is disabled with exact phrase


Scenario: CP16 Complete profile very long Nationality
And check that screen contains "Complete your profile"
And scroll down until screen contains "Nationality" with exact phrase
And enter "RepublicOfVeryLongNationalityNameForBoundaryTestingAndDropdownValidationPurposesUnitedStatesOfExtraCharactersSampleDataOverflowTesting2026" into field on the below of "Nationality" with exact phrase
And wait 2 sec
And check that button "Continue" is disabled with exact phrase


Scenario: CP17 Complete profile long name and email with alphanumeric phone and DOB
And check that screen contains "Complete your profile"
And enter "AlexanderJonathanChristopherMontgomeryWellingtonFairfaxHarringtonBeauregardThaddeusMaximilianBartholomewPercivalReginaldCorneliusFitzwilliam" into field on the below of "First Name" with exact phrase
And enter "verylongemailprefixforboundarytestingpurposesandvalidationrulesonclientsideandserversidesampleuseraccountname1234567890abcdefghijklmnopqrstuvwxyz@example-domain-for-testing.co.uk" into field on the below of "Email" with exact phrase
And enter "ABC123xyz456PHONEtest789" into "{el:signup-phone}"
And enter "19AB88CD" into field on the below of "Date of Birth" with exact phrase
And check that button "Continue" is disabled with exact phrase