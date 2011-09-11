Feature: Users can add account entries to their account
  In order to keep track of my money
  As a user
  I can add account entries

Scenario: User creates a new account entry with valid data
  Given I am signed in as a user
  And I am on the add account entry page
  And I create an account entry with the values "Test" and "10"
  Then I should be on the add account entry page
  And I should see a notice that my new entry was saved

Scenario: User creates a new account entry with invalid data
  Given I am signed in as a user
  And I am on the add account entry page
  And I create an account entry with the values "" and "10"
  Then I should see an error notice
  And I should not see a notice that my new entry was saved

Scenario: User is on the index page and want's to add a new entry
  Given I am signed in as a user
  And I am on the account entries page
  And I click the new account entry link
  Then I should be on the add account entry page