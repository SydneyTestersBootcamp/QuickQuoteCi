Feature: Field validations for Age and Email

  Scenario: Invalid Age
    Given I am on the SydneyTesters Life Insurance page
    When I submit an invalid age 'xy' 
    Then I should see an error message that the 'The age is required'
        
  Scenario: Invalid Emails
    Given I am on the SydneyTesters Life Insurance page
    When I enter an invalid email 'hans@gmail'
    Then I should see an error message that the 'email is not valid'
            
  Scenario: Valid Emails
    Given I am on the SydneyTesters Life Insurance page
    When I enter a valid email 'hans@gmail.com'
    Then I should not see an error message that the 'email is not valid'