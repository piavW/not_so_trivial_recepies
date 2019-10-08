Feature: User can sign up for an account
  As a user
  In order to be able to finalise an order
  I would like to be able to register an account

  Background: 
    Given I visit the landing page
    And I click "Sign up here"

  Scenario: Creating an account[Happy Path]
    When I fill in "Email" with "berg@sten.com"
    And I fill in "Password" with "password"
    And I fill in "Password confirmation" with "password"
    And I click "Sign up"
    Then I should see "Logged in as berg@sten.com"