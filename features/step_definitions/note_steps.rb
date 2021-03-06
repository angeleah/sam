#add_note_feature
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

Given /^I am creating a new note$/ do
  visit(new_client_note_path(@client))
end

Given /^I fill in the note field$/ do
  fill_in 'Note' , :with => "notes"
end

When /^I press Create Note$/ do
  click_button('create_note')
end

Then /^there should be (\d+) notes$/ do |count|
  Client.first.notes.count.should == count.to_i
end

#delete_note.feature

When /^I press Delete Note$/ do
  visit(client_note_path(@client,@client.notes.first))
  click_link('Delete')
end

#editing_a_note.feature

Given /^she has a note "(.*?)"$/ do |note|
  @note = Note.create(:note => note)
end

When /^I edit the note field with "(.*?)"$/ do |new_note|
  visit(edit_client_note_path(@client,@note))
  fill_in 'Note' , :with => new_note
end

When /^I press create_note$/ do
  click_button('create_note')
end

Then /^the note should be "(.*?)"$/ do |note|
  Note.first.note.should == note
end