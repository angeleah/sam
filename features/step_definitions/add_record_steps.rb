Given /^I have a client with first name "(.*?)"$/ do |arg1|
 :first_name == "Kelly"
end

Given /^last name "(.*?)"$/ do |arg1|
  :last_name == "Zeeba"
end

Given /^she has (\d+) records$/ do |arg1|
  Record.count.should == 0
end