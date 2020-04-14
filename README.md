## Verify Values on Screen

The sums of "$122,365.24", "$559.00", "$850,139.99", "$23,329.50" and "$566.27" does not equal $100,000,000.00. If run, the Verify Balance Totals feature will fail.

If the results actually passed, the results would look like what is shown below:

```
Feature: Verify Balance Totals
  Verify that the value table has the proper count of values

  Scenario: Sum Total Equals Balance                    
    Given the values table is displayed                 
    When I store the values in a list                   
      ["$122,365.24", "$559.00", "$850,139.99", "$23,329.50", "$566.27"]
    And I grab the balance
      $1,000,000.00                             
    Then I should find the value sum equals the balance

Feature: Verify Values Greater Than Zero
  Verify that all values are greater than zero

  Scenario: On-Screen Values Are Greater Than Zero        
    Given the values table is displayed                   
    When I store the values in a list                     
      ["$122,365.24", "$559.00", "$850,139.99", "$23,329.50", "$566.27"]
    Then I should verify all values are greater than zero

Feature: Verify Value Count
  Verify that the value table has the proper count of values

  Scenario: Five Values Appear On Screen
    Given the values table is displayed  
    When I store the values in a list    
      ["$122,365.24", "$559.00", "$850,139.99", "$23,329.50", "$566.27"]
    Then I should find "5" values        

Feature: Verify Values Are Currency
  Verify that the values are properly listed as USD

  Scenario: Verify Values Are Currency              
    Given the values table is displayed             
    When I store the values in a list               
      ["$122,365.24", "$559.00", "$850,139.99", "$23,329.50", "$566.27"]
    Then I should find all values are in USD format

4 scenarios (4 passed)
13 steps (13 passed)
0m2.169s
```
