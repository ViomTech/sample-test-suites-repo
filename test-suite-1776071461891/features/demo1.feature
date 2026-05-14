And ```gherkin

Feature: Credit Limit Increase Reporting, Documentation, Integration, and Accessibility
  Background:
    And the credit limit increase service is available through the Riyad Mobile App
    And CSR is available for storing service request details
    And Datawarehouse is available for reporting data storage

    And Falcon integration is available for non-monetary event ingestion

  ########################################################################

  # STORY 1: Capture Credit Card Limit Increase Details
  ########################################################################
  @Story1 @High @CaptureDetails @Positive
  Scenario: Capture all required details in CSR and Datawarehouse after successful CLI request
    And enter "{customerDetails}" into "Customer Information"
    And enter "{expensesInformation}" into "Expenses Information"
    And enter "{financialDetails}" into "Financial Details"
    And enter "{existingCreditCardDetails}" into "Credit Card Details"
    And enter "{liabilitiesInformation}" into "Liabilities Information"
    And check that screen contains "Request successfully captured in CSR"
    And check that screen contains "Request successfully captured in Datawarehouse"


  @Story1 @High @CaptureDetails @Validation

Scenario: Validate all mandatory customer and financial fields are captured for successful CLI request
    And check that screen contains "{mandatoryFields}" with exact phrase
    And check that screen contains "All mandatory fields captured in CSR"

    And check that screen contains "All mandatory fields captured in Datawarehouse"

  @Story1 @High @CaptureDetails @Negative

Scenario: Do not capture CLI details when the request is unsuccessful
    And check that screen does not contain "Request successfully captured for reporting"
    And check that screen does not contain "CLI reporting record created in CSR"
    And check that screen does not contain "CLI reporting record created in Datawarehouse"


  ########################################################################
  # STORY 2: Store Captured Details

  ########################################################################
  @Story2 @High @Storage @Positive

Scenario: Store captured CLI details consistently in CSR and Datawarehouse
    And check that screen contains "Captured details stored in CSR"
    And check that screen contains "Captured details stored in Datawarehouse"
    And check that screen contains "Data integrity maintained"

    And check that screen contains "Data consistency maintained"

  @Story2 @High @Storage @Reporting

Scenario: Verify report name is CLI Report

    And check that screen contains "CLI Report" with exact phrase

  @Story2 @High @Storage @Negative

Scenario: Detect inconsistency between CSR and Datawarehouse storage
    And check that screen contains "Mismatch detected between CSR and Datawarehouse"

    And check that screen contains "Inconsistency logged for investigation"

  ########################################################################

  # STORY 3: Generate Reports
  ########################################################################
  @Story3 @High @Reports @Positive

Scenario: Generate report with all required customer and financial details
    And check that screen contains "Customer details included in report"
    And check that screen contains "Financial details included in report"
    And check that screen contains "Credit limit increase details included"

    And check that screen contains "Risk assessment scores included"

  @Story3 @High @Reports @CLIFlag

Scenario: Create and store CLI flag for customers who received CLI
    And check that screen contains "CLI flag developed for customer"
    And check that screen contains "CLI flag stored in CSR"
    And check that screen contains "CLI flag stored in Datawarehouse"


  @Story3 @High @Reports @Validation

Scenario: Ensure CLI flag is available for reporting and analysis
    And check that screen contains "CLI flag field included in report"
    And check that screen contains "CLI flag correctly identifies eligible customers"


  @Story3 @High @Reports @Negative

Scenario: Do not assign CLI flag to customers without credit limit increase
    And check that screen does not contain "Active CLI flag assigned"


  ########################################################################
  # STORY 4: Generate Salary Certificates

  ########################################################################
  @Story4 @Medium @SalaryCertificate @Positive

Scenario: Generate Salary Certificate for eligible customers
    And check that screen contains "Salary Certificate generated"


Scenario: Generate and store salary certificate in CSR after successful CLI request
    And a customer has a successful credit limit increase request
    And the system generates the salary certificate
    And the salary certificate should be linked to the service request
    And the salary certificate should be stored in CSR

  @Story4 @Medium @SalaryCertificate @Format


Scenario: Validate salary certificate date, currency, and time format
    And a salary certificate is generated for a successful credit limit increase request
    And the certificate content is reviewed
    And the certificate should include the Gregorian date in DD/MM/YYYY format
    And the certificate should include Hijri date if required by the source content
    And the certificate should include currency amounts in the expected format

    And the certificate should include time in 24-hour format

  @Story4 @Medium @SalaryCertificate @Bilingual

Scenario: Include Arabic and English details in salary certificate when received
    And salary certificate input details are received in both Arabic and English

    And the system generates the salary certificate
    And the certificate should contain Arabic details
    And the certificate should contain English details


  @Story4 @Medium @SalaryCertificate @Conditional

Scenario: Include only available language details when bilingual data is not received
    And salary certificate input details are received in only one language
    And the system generates the salary certificate

    And the certificate should include the available language details
    And the system should not create incorrect translated content for the missing language

  ########################################################################
  # STORY 5: Generate Promissory Note

  ########################################################################

  @Story5 @Medium @PromissoryNote @Positive


Scenario: Generate and store promissory note in CSR after successful CLI request
    And a customer has a successful credit limit increase request
    And the system generates the promissory note
    And the promissory note should be linked to the service request
    And the promissory note should be stored in CSR


  @Story5 @Medium @PromissoryNote @Negative

Scenario: Do not generate promissory note for unsuccessful CLI request
    And a credit limit increase request is unsuccessful
    And document generation is triggered

    And the promissory note should not be stored in CSR against a successful service request

  ########################################################################
  # STORY 6: Send CLI Non-monetary Events to Falcon
  ########################################################################


  @Story6 @High @Falcon @Realtime

Scenario: Send CLI non-monetary event to Falcon in real time
    And a credit limit increase event occurs
    And the event is triggered by the system
    And the system should send the event to Falcon in real time
    And the event should use NMON " " as per Falcon standard data mapping 3201


  @Story6 @High @Falcon @Tracking


Scenario: Enable Falcon to track transactions after CLI event
    And a credit limit increase event has been sent to Falcon
    And early life transactions occur shortly after the credit limit increase
    And Falcon should be able to identify the customer event context
    And Falcon should be able to track the related transactions for risk monitoring


  @Story6 @High @Falcon @Validation

Scenario: Validate event payload mapping against Falcon standard data mapping 3201
    And a credit limit increase event is ready to be sent to Falcon
    And the event payload is prepared

    And the payload should conform to Falcon standard data mapping 3201
    And the payload should be classified as a non-monetary event

  @Story6 @High @Falcon @Negative


Scenario: Log failure when Falcon event delivery is unsuccessful
    And a credit limit increase event occurs
    And Falcon is unavailable or rejects the event
    And the system attempts to send the event
    And the delivery failure should be logged

    And the failed event should be available for monitoring or reprocessing

  ########################################################################

  # STORY 7: Ensure Digital Content Accessibility
  ########################################################################

  @Story7 @Medium @Accessibility @WCAG


Scenario: Ensure digital content complies with WCAG requirements
    And digital content is published by the system
    And the accessibility compliance is validated
    And the content should adhere to WCAG requirements


  @Story7 @Medium @Accessibility @Images

Scenario: Ensure images contain descriptions in English and Arabic

    And the system displays images in digital content
    And the image metadata is reviewed
    And each image should have an English description
    And each image should have an Arabic description


  @Story7 @Medium @Accessibility @QRCode

Scenario: Ensure QR codes are clickable and direct to the linked URL
    And the system displays a QR code in digital content
    And a user activates the QR code

    And the QR code should direct the user to the linked URL

  @Story7 @Medium @Accessibility @Videos

Scenario: Ensure videos provide subtitles