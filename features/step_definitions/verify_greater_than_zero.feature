Feature: Verify Values Greater Than Zero
  Verify that all values are greater than zero

  Scenario: On-Screen Values Are Greater Than Zero
    Given the values table is displayed
    When I store the values in a list
    Then I should verify all values are greater than zero
