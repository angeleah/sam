Given /^I have no clients$/ do
  #noop
end

Given /^I am creating a new client$/ do
  visit "/clients/new"
end

When /^I enter first name "(.*?)"$/ do |first_name|
 fill_in 'client_first_name', :with => first_name
end

When /^I enter last name "(.*?)"$/ do |arg1|
  :last_name
end

When /^press "(.*?)"$/ do |arg1|
  click_button(arg1)
end


When /^there is no "(.*?)"$/ do |arg1|
  warning = false 
  if :firstname.nil? 
    warning = true
  elsif :lastname.nil?
    warning = true
  end 
  return warning 
end

Then /^it should be  "(.*?)"$/ do |arg1|
  Client.new unless warning == true
end

#12 passed?  Not sure how.