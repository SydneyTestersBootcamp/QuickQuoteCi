Feature: View Premium for Quote
  
  Scenario: View correct premium for different combinations of age, gender, state etc
    Given I am on the SydneyTesters Car Insurance page
    When I submit my details age: '23', gender: 'male', state: 'New South Wales' & car make: 'BMW' for a car insurance quote
    Then I should see the correct premium '$55.54' shown
    And when I purchase it with my credit card
    Then I should see a 'Payment Sucessful' message