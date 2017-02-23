Given(/^I visit "([^"]*)"$/) do |sign_in_path|
  visit(sign_in_path) # Write code here that turns the phrase above into concrete actions
end

When(/^I enter "([^"]*)" in the "([^"]*)" field$/) do |arg1, arg2|
  fill_in( arg2, :with => arg1 )# Write code here that turns the phrase above into concrete actions
end

When(/^I press the "([^"]*)" button$/) do |arg|
  click_button( arg ) # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see the "([^"]*)" page$/) do |arg|
  expect(page).to have_content(arg)
end

Given(/^an author named "([^"]*)" with email "([^"]*)"$/) do |arg1, arg2|
  Author.create(name: arg1, email: arg2, password: 'password', password_confirmation: 'password') # Write code here that turns the phrase above into concrete actions
end
