Feature: Editing a client name
	As a user of sam
	I want to be able to edit a users name
	So that I can keep records updated 
		And avoid having unused records
		
	Scenario: edit the name
		Given I have a client with first name "Kelly"
			And last name "Zeeba"
			And I need to change her first name to "Kelli"
			And her last name to "Doogan"	
		When I fill-in first name "Kelli"
			And I fill-in last name "Doogan"
		When I press Create Client
		Then the client first name should be "Kelli"
			And the last name should be "Doogan"