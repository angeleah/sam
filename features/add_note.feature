Feature: add a note
	As a logged in user of sam
	I want to be able to add a note
	So that I can keep my data organized
	
	Scenario: add a note to a client with 0 notes
		Given I have a client with first name "Kelly" 
			And last name "Zeeba"
			And she has 0 notes
		When I click "add note"
		Then page should redirect to the notes page
			And when I click "save" there should be 1 note 
		
		
	Scenario: add a note to a client with 1 notes
		Given I have a client with first name "Kelly" 
			And last name "Zeeba"
			And she has 1 notes
		When I click "add note"
		Then page should redirect to the notes page
			And when I click "save" there should be 2 notes
	