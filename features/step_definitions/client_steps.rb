Given /^I have no clients$/ do
 #noop
end

Given /^I am creating a new client$/ do
  visit "/clients/new"
end

When /^I enter first name "(.*?)"$/ do |first_name|
 fill_in 'client_first_name', :with => first_name
end

When /^I enter last name "(.*?)"$/ do |last_name|
  fill_in 'client_last_name', :with => last_name
end

When /^I press Create Client$/ do
 click_button('create_client')
end

Then /^client count should be "(.*?)"$/ do |count|
  Client.count.should == count.to_i
end
