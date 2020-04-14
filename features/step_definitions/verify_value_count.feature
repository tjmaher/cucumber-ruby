Feature: Verify Value Count
  Verify that the value table has the proper count of values

  Scenario: Five Values Appear On Screen
    Given the values table is displayed
    When I store the values in a list
    Then I should find "5" values
