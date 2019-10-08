Feature: User can search for recipes
  As a user
  In order to find a recipe
  I would like to be able to search by what ingredient I have in my fridge

  Scenario: User can search by ingredient
    Given I visit the home page
    When I fill in "Search" field with "apples"
    Then I click "Submit"
    And I should see "Recipes List"
    And I should see "Apricot Glazed Apple Tart"
    And I should see "Apple Or Peach Strudel"

    