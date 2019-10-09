Feature: User can view full recipe
  As a user
  In order to see a recipe
  I would like to be able to press a button called show to see the full recipe

  Scenario: User views full recipe with instructions
    Given I visit the home page
    When I fill in "Search" with "apples"
    And I click "Submit"
    Then I should see "Recipes List"
    And I should see "Dried Apples"
    And I click "Dried Apples"
    Then I should see ""