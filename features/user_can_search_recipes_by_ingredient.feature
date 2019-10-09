@get_recipes
Feature: User can search for recipes
  As a user
  In order to find a recipe
  I would like to be able to search by what ingredient I have in my fridge

  Background:
    Given I visit the home page

  Scenario: User can search by ingredient[Happy Path]
    When I fill in "Search" with "apples"
    And I click "Submit"
    Then I should see "Recipes List"
    And I should see "2 Ingredient Instant Pot Applesauce"
    And I should see "Dried Apples"

  Scenario: User types in unrelated characters[Sad Path]
    When I fill in "Search" with "asdafaf"
    And I click "Submit"
    Then I should see "There is no recipe with that ingredient"