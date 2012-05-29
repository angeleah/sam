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

When /^press "(.*?)"$/ do |arg1|
  click_button(arg1)
end

Then /^client count should be "(.*?)"$/ do |arg1|
  Client.count.should == 1
end