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

When /^I press "(.*?)"$/ do |arg1|
  click_button(arg1)
end

Then /^client count should be "(.*?)"$/ do |count|
  Client.count.should == count.to_i
end

Given /^I have a client with first name "(.*?)"$/ do |first_name|
 @client = Client.new(:first_name => first_name)
end

Given /^last name "(.*?)"$/ do |last_name|
  @client.update_attributes(:last_name => last_name)
end

Given /^she has (\d+) notes$/ do |notes|
  @client.notes.destroy_all
  notes.to_i.times do
    @client.notes << Note.create(:note => "insert jokes")
  end
end
