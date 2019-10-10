Feature: User can purchase premium membership
  As a user
  In order to save my favorite recipes
  I would like to be able to pay for premium membership

  Background:
    Given the following membership exist
      | membership |
      | premium    |
    Given I visit the home page

  Scenario:
  Given I click on "Buy" for "premium membership"
  Then I should be on purchase page
  And I fill in the Stripe field "CC Number" with "4242424242424242"
  And I fill in the Stripe field "Expiry date" with "01/2022"
  And I fill in the Stripe field "CVC" with "123"
  And I submit the Stripe form
  Then I should see "Thank you!"