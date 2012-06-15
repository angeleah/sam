Feature: deleting a client
	As a logged in user 
	I want to be able to delete a client
	So that I can remove clients I do not need
	
	Scenario: deleting a client
		Given I have a client with first name "Kelly" 
			And last name "Zeeba"
		Given I have a client with first name "Wanda" 
			And last name "Shoes"
		Given I have a client with first name "Lady" 
			And last name "Blah"
		When I press Delete Client
		Then client count should be 2