Feature: Signing in via http

	Scenario: HTTP sign-in
	  When I perform HTTP authentication as "username" with "password"
	  Then I should see "clients"
