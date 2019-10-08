Feature: User can log in to their account
  As a user
  in order to see my saved recipes
  I would like to be to log in

  Background: 
    Given the following user exists
      | email         | password |
      | berg@sten.com | password |
    And I visit the landing page
    And I click "Login"

  Scenario: User can login [Happy Path]
    When I fill in "Email" with "berg@sten.com"
    And I fill in "Password" with "password"
    And I click "Log in"
    Then I should see "Logged in as berg@sten.com"