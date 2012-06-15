Feature: add a note
	As a logged in user of sam
	I want to be able to add a note
	So that I can keep my data organized
	
	Scenario: add a note to a client with 0 notes
		Given I have a client with first name "Kelly" 
			And last name "Zeeba"
		Given she has 0 notes
			And I am creating a new note
			And I fill in the note field	
		When I press Create Note 
	 	Then there should be 1 notes 
		
	Scenario: add a note to a client with 1 notes
		Given I have a client with first name "Kelly" 
			And last name "Zeeba"
		Given she has 1 notes
			And I am creating a new note
			And I fill in the note field	
		When I press Create Note 
	 	Then there should be 2 notes
	