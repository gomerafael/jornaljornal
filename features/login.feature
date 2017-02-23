Feature: O gomes não consegue fazer login

    Background:
      Given an author named "ineboy" with email "ineboy@coritiba.com"

    Scenario: Author edit a post
      Given I visit "/authors/sign_in"
      When I enter "ineboy@coritiba.com" in the "Email" field
        And I enter "password" in the "Password" field
        And I press the "Log in" button
      Then I should see the "Signed in successfully." page
