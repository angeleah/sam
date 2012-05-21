Feature: user can login
	As an authorized user of sam
	I want to be able to login
	So that I can use the sam securely	
		
	Scenario Outline: user can login
		Given I have a user with username "angeleah" with password "1234"
		When I enter username "<username>"
		 And enter "<password>"
		Then I should be <logged_in?>
		
		Scenarios: successful login
		| username | password | logged_in? |
		| angeleah | 1234 	  | 	Y	   |
		
		Scenarios: failed login
		| username | password | logged_in?|
		| angleah  | 1234 	  |		N	  |
		| angeleah | 1237 	  |		N	  |
		| ageleah  | 1237 	  | 	N     |
		
		