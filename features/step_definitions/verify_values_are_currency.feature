Feature: Verify Values Are Currency
  Verify that the values are properly listed as USD

  Scenario: Verify Values Are Currency
    Given the values table is displayed
    When I store the values in a list
    Then I should find all values are in USD format
