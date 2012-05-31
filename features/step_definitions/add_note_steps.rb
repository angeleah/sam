Given /^I have a client with first name "(.*?)"$/ do |arg1|
 :first_name == "Kelly"
end

Given /^last name "(.*?)"$/ do |arg1|
  :last_name == "Zeeba"
end

Given /^she has (\d+) notes$/ do |arg1|
  #Notes.count.should == 0
end