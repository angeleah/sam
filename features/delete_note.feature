Feature: deleting a note
	As a logged in user 
	I want to be able to delete a note
	So that I can remove notes I do not need
	
	Scenario: deleting a note
		Given I have a client with first name "Kelly" 
			And last name "Zeeba"
		Given she has 3 notes
		When I press Delete Note
		Then she has 2 notes