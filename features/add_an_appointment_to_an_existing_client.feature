Feature: add an appointment to an existing client
	As a logged in user of sam
	I want to be able to add an appointment/notes
	So that I can keep my data organized
	
	Scenario 1: the add an appointment form should appear
		Given I have clicked on the create appointment button
		When the page redirects
		Then the form should render
		
	Scenario 2:	successful save
		Given I have filled in the notes section
		When I click on the save button
		Then the info should save 
			And a success message should display
			
	Scenario 3: unsuccessful save
		Given I have not filled in the notes section
		When I click on the save button
		Then the info should not save 
			And an error message should display