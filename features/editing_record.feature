Feature: edit a record of an existing client
	As a logged in user of sam
	I want to be able to edit a record
	So that I can keep my data accurate
	
	Scenario: the notes field should become editable
		Given I have a record and the notes contain "abcd"
		When I click 'edit'
		Then the notes field should become editable
			And I should be able to change the notes to "dcba"
			
	Sceanrio: the first name field should become editable
		Given I have a client with first name "Kelly"
		When I click "edit"
		Then I should be able to change the first name to "Nora"
		
	Sceanrio: the last name field should become editable
		Given I have a client with last name "Zeba"
		When I click "edit"
		Then I should be able to change the first name to "Jones"
	
	Scenario: the 'edit' button should appear after a 'save'
		Given I have a record 
			And I entered "I am a client." into the notes field
		When I click the 'save' button
			And the record saves
		Then the 'save' button should turn into an 'edit' button
		
	Scenario: the 'save' button should appear after the 'edit' button is clicked
		Given I have clicked on the 'edit' appointment button
			And the notes field has become editable
		Then the 'edit' button should change into a 'save' button	
		
	Scenario: successful save
		Given there is "abcd" in the notes field
		When I click on the 'save' button
		Then the info should save 
			And a success message should display that says "You have successfully updated this record."
			
	Scenario: warning message for an empty notes field
		Given I have a notes section with "abcd" and I delete the text
			And I have ""
		When I click on the 'save' button
		Then then a message should display 'Are you sure you want to save a blank notes field?'
		 And it should contain the options 'yes' and 'no'
		
	Scenario: warning message for an blank notes field
		Given I have a notes section with "abcd" and I delete the text
			And I have "  "
		When I click on the 'save' button
		Then then a message should display 'Are you sure you want to save a blank notes field?'
		 And it should contain the options 'yes' and 'no'
		
	Scenario: confirming to save a blank notes field
		Given I have a notes field with "abcd"
			And I clicked the 'edit' button
			And I have entered "" into the notes field
			And I have clicked 'save'
		When I click 'yes' to save a blank notes field
		Then the notes field should contain ""
		
	Scenario: declining to save a blank notes field
		Given I have a notes field with "abcd"
			And I clicked the 'edit' button
			And I have entered "" into the notes field
			And I have clicked 'save'
		When I click 'no' to save a blank notes field
		Then the notes field should contain "abcd"