##
# Use I18n
###
Given /^I am signed in as a user$/ do
  Given %{I sign in}
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

And /^I have a "(.*)" entry which costs "(.*)"$/ do |description, amount|
  And %{I am on the add account entry page}
  And %{I create an account entry with the values "#{description}" and "#{amount}"}
end

Then /^I should see my current balance of "(.*)"$/ do |balance|
  Then %{I should see "Balance: #{balance}"}
end

And /^I should see a "(.*)" entry costing "(.*)"$/ do |description, amount|
  Then %{I should see "#{description} #{amount}"}
end

And /^I click the view account entries link$/ do
  click_link "View Entries"
end