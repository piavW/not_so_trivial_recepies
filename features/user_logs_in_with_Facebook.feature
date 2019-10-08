Feature: User logs in with Facebook
  Go to your app and tap on the Log in with Facebook button
  Tap OK to acept the read permissions
  Click OK again to accept write permissions if applicable
  Go to app settings and verify that the granted permissions are there

  Background:
    Given I visit the landing page

  Scenario: User can log in with Facebook authorization
    Given I click "Continue with Facebook"
    And I click "OK" to accept the read permissions
    And I click "OK" again to accept write permissions 
    And I go to app settings and verify that the granted permissions are true
    Then I should see "Logged in as ?"

