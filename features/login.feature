Feature: user can login
	As an authorized user of sam
	I want to be able to login
	So that I can use the sam securely
	
Scenario 1: valid login
	Given I am an authorized user
	When I enter my username and password
	Then I should be redirected to my client search page
	
	