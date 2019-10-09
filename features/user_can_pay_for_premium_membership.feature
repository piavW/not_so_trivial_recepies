Feature: User can pay for premium membership
  As a user
  In order to save my favorite recipes
  I would like to be able to pay for premium membership

  Background: 
  Given the following user exists
    | email         |
    | berg@sten.com |
  And I am logged in as "berg@sten.com"
  And I visit the home page

  Scenario: User can pay for membership 
  When I click "Subscription"
  Then I should be on "Subscription page"
  And I fill in "payment details" with "berg"