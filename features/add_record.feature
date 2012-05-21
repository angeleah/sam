Feature: add a record
	As a logged in user of sam
	I want to be able to add a record
	So that I can keep my data organized
	
	Scenario 1: add a record to a client with 0 records
		Given I have a client with first name "Kelly" 
			And last name "Zeeba"
			And she has 0 records
		When I click "add record"
		Then page should redirect to the records page
			And when I click "save" there should be 1 record 
		
		
	Scenario 2: add a record to a client with 1 records
		Given I have a client with first name "Kelly" 
			And last name "Zeeba"
			And she has 1 records
		When I click "add record"
		Then page should redirect to the records page
			And when I click "save" there should be 2 records
	