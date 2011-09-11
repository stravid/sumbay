

# And /^I create a new valid account entry$/ do
#   Then %{I add the new expense "Test" which costs 100}
# end



And /^I have previously saved account entries$/ do
  Given %{I am on the add account entry page}
  Then %{I add the new expense "Test" which costs 100}
end

Then /^I add the new expense "(.*)" which costs (\d*)$/ do |description, amount|
  Then %{I fill in "Description" with "#{description}"}
  And %{I fill in "Amount" with "#{amount}"}
  And %{I press "Save"}
end

Then /^I should see my current balance$/ do
  Then %{I should see /Balance: \d*/}
end

And /^I should see my previously saved account entries$/ do
  Then %{I should see "Test 100"}
end

##
# Use I18n
###
Given /^I am signed in as a user$/ do
  Given %{I am signed in as "example@example.com"}
end

And /^I should( not)? see a notice that my new entry was saved$/ do |switch|
  Then %{I should#{switch} see "Your new entry was saved!"}
end

And /^I create an account entry with the values "(.*)" and "(.*)"$/ do |description, amount|
  Then %{I fill in "Description" with "#{description}"}
  And %{I fill in "Amount" with "#{amount}"}
  And %{I press "Save"}
end

Then /^I should see an error notice$/ do
  Then %{I should see "The values you entered are not valid!"}
end

And /^I click the new account entry link$/ do
  click_link "New Account Entry"
end