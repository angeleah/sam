Feature: user can login
	As an authorized user of sam
	I want to be able to login
	So that I can use the sam securely	
		
	Scenario Outline: user can login
		Given I have a user with username "angeleah" with password "1234"
		When I enter username "<username>"
		 And enter "<password>"
		Then I should be <log_in_state>
		
		Scenarios: successful login
		| username | password | logged_in_state |
		| angeleah | 1234 	  | logged in		|
		
		Scenarios: failed login
		| username | password | logged_in_state |
		| angleah  | 1234 	  | not logged in	|
		| angeleah | 1237 	  | not logged in	|
		| ageleah  | 1237 	  | not logged in	|
		
		