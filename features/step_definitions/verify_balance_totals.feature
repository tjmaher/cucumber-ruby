Feature: Verify Balance Totals
  Verify that the value table has the proper count of values

  Scenario: Sum Total Equals Balance
    Given the values table is displayed
    When I store the values in a list
    And I grab the balance
    Then I should find the value sum equals the balance
