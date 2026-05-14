Feature: Credit Limit Increase Reporting, Documentation, Integration, and Accessibility

  Background:
    Given the credit limit increase service is available through the Riyad Mobile App
    And CSR is available for storing service request details
    And Datawarehouse is available for reporting data storage
    And Falcon integration is available for non-monetary event ingestion

  ########################################################################
  # STORY 1: Capture Credit Card Limit Increase Details
  ########################################################################

  @Story1 @High @CaptureDetails @Positive
  Scenario: Capture all required details in CSR and Datawarehouse after successful CLI request
    Given a customer submits a successful credit card limit increase request via the Riyad Mobile App
    When the request is processed successfully
    Then the system should capture the request details in CSR
    And the system should capture the request details in Datawarehouse
    And the captured data should include all customer information as per FR01.01
    And the captured data should include all expenses information as per FR01.01
    And the captured data should include all financial details as per FR01.01
    And the captured data should include existing credit card details as per FR01.01
    And the captured data should include liabilities information as per FR01.01

  @Story1 @High @CaptureDetails @Validation
  Scenario: Validate all mandatory customer and financial fields are captured for successful CLI request
    Given a customer submits a successful credit card limit increase request via the Riyad Mobile App
    When the request is processed successfully
    Then no mandatory FR01.01 field should be missing in CSR
    And no mandatory FR01.01 field should be missing in Datawarehouse

  @Story1 @High @CaptureDetails @Negative
  Scenario: Do not capture CLI details when the request is unsuccessful
    Given a customer submits a credit card limit increase request via the Riyad Mobile App
    And the request is rejected or fails during processing
    When the request processing is completed
    Then the system should not mark the request as successfully captured for reporting
    And no successful CLI reporting record should be created in CSR
    And no successful CLI reporting record should be created in Datawarehouse

  ########################################################################
  # STORY 2: Store Captured Details
  ########################################################################

  @Story2 @High @Storage @Positive
  Scenario: Store captured CLI details consistently in CSR and Datawarehouse
    Given the system has captured details from a credit limit increase request
    When the system stores the captured details in CSR and Datawarehouse
    Then the stored data in CSR should match the stored data in Datawarehouse
    And the stored data should maintain integrity across both systems
    And the stored data should maintain consistency across both systems

  @Story2 @High @Storage @Reporting
  Scenario: Verify report name is CLI Report
    Given captured CLI request details are stored in CSR and Datawarehouse
    When the reporting configuration is checked
    Then the report name should be "CLI Report"

  @Story2 @High @Storage @Negative
  Scenario: Detect inconsistency between CSR and Datawarehouse storage
    Given the system has captured details from a credit limit increase request
    When the system stores the captured details in CSR and Datawarehouse
    Then the system should identify any mismatch between CSR and Datawarehouse records
    And the inconsistency should be logged for investigation

  ########################################################################
  # STORY 3: Generate Reports
  ########################################################################

  @Story3 @High @Reports @Positive
  Scenario: Generate report with all required customer and financial details
    Given the stored CLI data exists in CSR and Datawarehouse
    When the system generates the CLI report
    Then the report should include all necessary customer details
    And the report should include all necessary financial details
    And the report should include credit limit increase details
    And the report should include risk assessment scores

  @Story3 @High @Reports @CLIFlag
  Scenario: Create and store CLI flag for customers who received CLI
    Given a customer has received a credit limit increase
    When the request is processed and stored
    Then the system should develop a CLI flag for the customer
    And the CLI flag should identify that the customer has received a credit limit increase
    And the CLI flag should be stored in CSR
    And the CLI flag should be stored in Datawarehouse

  @Story3 @High @Reports @Validation
  Scenario: Ensure CLI flag is available for reporting and analysis
    Given a customer has a stored CLI flag in CSR and Datawarehouse
    When a CLI report is generated
    Then the report should include the CLI flag field
    And the CLI flag should correctly identify eligible customers

  @Story3 @High @Reports @Negative
  Scenario: Do not assign CLI flag to customers without credit limit increase
    Given a customer has not received a credit limit increase
    When the reporting data is generated
    Then the customer should not be marked with an active CLI flag

  ########################################################################
  # STORY 4: Generate Salary Certificates
  ########################################################################

  @Story4 @Medium @SalaryCertificate @Positive
  Scenario: Generate and store salary certificate in CSR after successful CLI request
    Given a customer has a successful credit limit increase request
    When the system generates the salary certificate
    Then the salary certificate should be linked to the service request
    And the salary certificate should be stored in CSR

  @Story4 @Medium @SalaryCertificate @Format
  Scenario: Validate salary certificate date, currency, and time format
    Given a salary certificate is generated for a successful credit limit increase request
    When the certificate content is reviewed
    Then the certificate should include the Gregorian date in DD/MM/YYYY format
    And the certificate should include Hijri date if required by the source content
    And the certificate should include currency amounts in the expected format
    And the certificate should include time in 24-hour format

  @Story4 @Medium @SalaryCertificate @Bilingual
  Scenario: Include Arabic and English details in salary certificate when received
    Given salary certificate input details are received in both Arabic and English
    When the system generates the salary certificate
    Then the certificate should contain Arabic details
    And the certificate should contain English details

  @Story4 @Medium @SalaryCertificate @Conditional
  Scenario: Include only available language details when bilingual data is not received
    Given salary certificate input details are received in only one language
    When the system generates the salary certificate
    Then the certificate should include the available language details
    And the system should not create incorrect translated content for the missing language

  ########################################################################
  # STORY 5: Generate Promissory Note
  ########################################################################

  @Story5 @Medium @PromissoryNote @Positive
  Scenario: Generate and store promissory note in CSR after successful CLI request
    Given a customer has a successful credit limit increase request
    When the system generates the promissory note
    Then the promissory note should be linked to the service request
    And the promissory note should be stored in CSR

  @Story5 @Medium @PromissoryNote @Negative
  Scenario: Do not generate promissory note for unsuccessful CLI request
    Given a credit limit increase request is unsuccessful
    When document generation is triggered
    Then the promissory note should not be stored in CSR against a successful service request

  ########################################################################
  # STORY 6: Send CLI Non-monetary Events to Falcon
  ########################################################################

  @Story6 @High @Falcon @Realtime
  Scenario: Send CLI non-monetary event to Falcon in real time
    Given a credit limit increase event occurs
    When the event is triggered by the system
    Then the system should send the event to Falcon in real time
    And the event should use NMON " " as per Falcon standard data mapping 3201

  @Story6 @High @Falcon @Tracking
  Scenario: Enable Falcon to track transactions after CLI event
    Given a credit limit increase event has been sent to Falcon
    When early life transactions occur shortly after the credit limit increase
    Then Falcon should be able to identify the customer event context
    And Falcon should be able to track the related transactions for risk monitoring

  @Story6 @High @Falcon @Validation
  Scenario: Validate event payload mapping against Falcon standard data mapping 3201
    Given a credit limit increase event is ready to be sent to Falcon
    When the event payload is prepared
    Then the payload should conform to Falcon standard data mapping 3201
    And the payload should be classified as a non-monetary event

  @Story6 @High @Falcon @Negative
  Scenario: Log failure when Falcon event delivery is unsuccessful
    Given a credit limit increase event occurs
    And Falcon is unavailable or rejects the event
    When the system attempts to send the event
    Then the delivery failure should be logged
    And the failed event should be available for monitoring or reprocessing

  ########################################################################
  # STORY 7: Ensure Digital Content Accessibility
  ########################################################################

  @Story7 @Medium @Accessibility @WCAG
  Scenario: Ensure digital content complies with WCAG requirements
    Given digital content is published by the system
    When the accessibility compliance is validated
    Then the content should adhere to WCAG requirements

  @Story7 @Medium @Accessibility @Images
  Scenario: Ensure images contain descriptions in English and Arabic
    Given the system displays images in digital content
    When the image metadata is reviewed
    Then each image should have an English description
    And each image should have an Arabic description

  @Story7 @Medium @Accessibility @QRCode
  Scenario: Ensure QR codes are clickable and direct to the linked URL
    Given the system displays a QR code in digital content
    When a user activates the QR code
    Then the QR code should direct the user to the linked URL

  @Story7 @Medium @Accessibility @Videos
  Scenario: Ensure videos provide subtitles
    Given the system displays video content
    When a user plays the video
    Then subtitles should be available for the video

  ########################################################################
  # STORY 8: OTP Verification Options
  ########################################################################

  @Story8 @Medium @OTP @Authentication
  Scenario: Provide Riyad Token as OTP verification option
    Given a user reaches the OTP verification step
    When OTP verification options are displayed
    Then Riyad Token should be available as an authentication option

  @Story8 @Medium @OTP @Fallback
  Scenario: Allow Riyad Token option as alternative to phone call OTP verification
    Given a user is eligible for OTP verification
    When the user chooses not to use phone call OTP verification
    Then the user should be able to select Riyad Token for verification

  ########################################################################
  # STORY 9: Voice Files for New ATM Features
  ########################################################################

  @Story9 @Medium @ATM @VoiceFiles
  Scenario: Create voice files for new ATM features
    Given a new feature is added to an ATM
    When the feature is prepared for release
    Then a voice file should be created for the new feature

  @Story9 @Medium @Kiosk @VoiceFiles
  Scenario: Create voice files for new self-service kiosk features
    Given a new feature is added to a self-service kiosk
    When the feature is prepared for release
    Then a voice file should be created for the new feature

  @Story9 @Medium @VoiceFiles @Validation
  Scenario: Ensure voice files are available for user guidance on new ATM or kiosk features
    Given voice files have been created for new ATM or self-service kiosk features
    When the feature is accessed by a user
    Then the corresponding voice guidance should be available