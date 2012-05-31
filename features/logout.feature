Feature: user can logout
	As a logged in user of sam
	I want to be able to logout
	So that I can restrict access to my client information
	
	Scenario: click the logout button
		Given I am a user named Angeleah
		When I click the log out button
		A message saying " you have successfully logged out" should appear
			And the page should redirect to the login page
			
			
		
		