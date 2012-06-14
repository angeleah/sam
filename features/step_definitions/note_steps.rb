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

When /^I press "(.*?)"$/ do |arg1|
  click_button('note_form_button')
end

Then /^page should redirect to the notes\/new page$/ do
  visit "/clients/1/notes/new"
end