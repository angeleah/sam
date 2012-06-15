Feature: edit a note of an existing client
	As a logged in user of sam
	I want to be able to edit a note
	So that I can keep my data accurate
	
	
	Scenario: edit a note
		Given I have a client with first name "Kelly"
			And last name "Zeeba"
			And she has a note "This is a note"	
		When I edit the note field with "This is the new note"
		When I press create_note
		Then the note should be "This is the new note"
