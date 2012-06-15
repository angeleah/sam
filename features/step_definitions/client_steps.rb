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

#edit_client_name.feature

Given /^I need to change her first name to "(.*?)"$/ do |arg1|
 @client.update_attributes(:first_name => arg1)
end

Given /^her last name to "(.*?)"$/ do |arg1|
  @client.update_attributes(:last_name => arg1)
end

Then /^the client first name should be "(.*?)"$/ do |first_name|
  Client.first.first_name.should == first_name
end

Then /^the last name should be "(.*?)"$/ do |last_name|
  Client.first.last_name.should == last_name
end

When /^I fill\-in first name "(.*?)"$/ do |first_name|
  visit(edit_client_path(@client))
  fill_in('First name', :with => first_name)
end

When /^I fill\-in last name "(.*?)"$/ do |last_name|
  visit(edit_client_path(@client))
  fill_in('Last name', :with => last_name)
end
