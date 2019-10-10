Feature: User logs in with Facebook
  As a user 
  In order to simplify the sign up/sign in process
  I would like to be able to authenticate myself using Facebook

  Background:
    Given I visit the landing page

  Scenario: Visitor click on 'Login with Facebook' and gets authenticated
    When I click 'Login with Facebook'
    Then I should be on the home page 
    And I should see 'Successfully authenticated from Facebook account'