Feature: User logs in with Facebook
  Go to your app and tap on the Log in with Facebook button
  Tap OK to acept the read permissions
  Click OK again to accept write permissions if applicable
  Go to app settings and verify that the granted permissions are there

  Background:
    Given I visit the landing page

  Scenario: User can log in with Facebook authorization
    Given I click "oauthlogin"
    And I fill in "Email or Phone" with "ehtermkrai_1570549278@tfbnw.net"
    And I fill in "Password" with "FakePassw0rd"
    And I click "Log In"
    Then I should see "Logged in as ?"

