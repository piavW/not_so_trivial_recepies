Feature: User can view some recipes 
  As a user
  I would like to view a list of recipes
  based on the ingredient I searched 

  Scenario: 
    Given I visit the home page
    And I fill in the field with "apples"
    Then I click "Submit"
    Then I would like to see "Recipes List"
    And I should see "Apricot Glazed Apple Tart"
    And I should see "Apple Or Peach Strudel"