Given /^I am on the (.+)$/ do |page_name|
 
 # path_to è un helper di cucumber che ho definito in support/paths.rb
 # in paths.rb è presente un modulo NavigationHelpers che ho incluso
 # in cucumber tramite World() messo in paths.rb
 
 visit path_to(page_name) 
end

When /^I follow "([^"]*)"$/ do |link|
  click_link link
end

When /^I fill in "([^"]*)" with "([^"]*)"$/ do |field, value|
  fill_in(field,with:value) 
end

When /^I press "([^"]*)"$/ do |button|
  click_button button
end

Then /^I should see "([^"]*)"$/ do |message|
  page.should have_content message
end