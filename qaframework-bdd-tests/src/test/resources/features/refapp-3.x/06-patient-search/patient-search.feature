Feature: Patient Search

  Background:
    Given the user login to the Outpatient Clinic

  Scenario Outline: Search for a patient
    When the user search for "<patientName>"
    Then the result should be "<result>"
    Examples:
      | patientName | result           |
      | Kevin Jones | Found 1 patient  |
      | 100MQ       | No results found |
