Feature: edit a record of an existing client
	As a logged in user of sam
	I want to be able to edit an appointment/notes record
	So that I can keep my data accurate
	
	Scenario 1: the notes field should become editable
		Given I have a record and the notes contain "abcd"
		When I click 'edit'
		Then the notes field should become editable
			And I should be able to change the notes to "dcba"
	
	Scenario 2: the 'edit' button should appear after a 'save'
		Given I have a record 
			And I entered "I am a client." into the notes field
		When I click the 'save' button
			And the record saves
		Then the 'save' button should turn into an 'edit' button
		
	Scenario 3: the 'save' button should appear after the 'edit' button is clicked
		Given I have clicked on the 'edit' appointment button
			And the notes field has become editable
		Then the 'edit' button should change into a 'save' button	
		
	Scenario 4:	successful save
		Given there is text in the notes field
		When I click on the 'save' button
		Then the info should save 
			And a success message should display
		****** break the below into 2 scenarios - you can use an outline to avoid duplication	
	Scenario 5: warning message for an empty notes field
		Given I have a notes section with "abcd" and I delete the text
			And I have "" or " "
		When I click on the 'save' button
		Then then a message should display 'are you sure you want to save an empty notes field' 
		
	