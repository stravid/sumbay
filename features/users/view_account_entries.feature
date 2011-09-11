Feature: Users can view list of their account entries
  In order to have an overview over my expenses
  As a user
  I can view all my account entries

Scenario: User with account entries views list of entries
  Given I am signed in as a user
  And I have a "Test 1" entry which costs "50.00"
  And I have a "Test 2" entry which costs "-30.00"
  And I am on the account entries page
  Then I should see my current balance of "20.00"
  And I should see a "Test 1" entry costing "50.00"
  And I should see a "Test 2" entry costing "-30.00"

Scenario: User is on the add account entry page and wants to view all account entries
  Given I am signed in as a user
  And I am on the add account entry page
  And I click the view account entries link
  Then I should be on the account entries page