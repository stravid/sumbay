Feature: Users can add account entries to their account
  In order to keep track of my money
  As a user
  I can add account entries

Scenario: User creates new account entry with valid data
  Given I am signed in as a user
  When I go to the add account entry page
  And I create a new valid account entry
  Then I should be on the add account entry page
  And I should see a notice that my new entry was saved