Feature: ability to search for a client
	As a user of sam
	I want to be able to search for clients
	So that I can not go insane looking through papers
	
	
	Scenario: search with first name only
		Given I enter a first name 
			And it is spelled correctly
		When I press search
		Then I should get a results page with all the results of that first name.
		
	Scenario: search with last name only
		Given I enter a last name 
			And it is spelled correctly
		When I press search
		Then I should get a results page with all the results of that last name.
	
	Scenario: search with full name
		Given I enter a first and last name 
			And it is spelled correctly
		When I press search
		Then I should get a results page with all the results of that first and last name.
	
	Scenario: search is unsuccessful
		Given I enter a name
			And it is spelled incorrectly
		When I press search
		Then I should get and error message
		
	Scenario: search is unsuccessful
		Given I enter a name
			And there is no record
		When I press search
		Then I should get and error message	
		
		
			