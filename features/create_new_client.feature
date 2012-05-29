Feature: ability to add a new client
	As a user of sam
	I want to be able to add a new client
	So that I can associate records to clients
	
	Scenario Outline: add a client
		Given I have no clients
			And I am creating a new client
		When I enter first name "<first_name>"
		  	And I enter last name "<last_name>"
			And press "add client"
		Then client count should be "<client_count>"
		
		Scenarios: successful add
		| first_name | last_name | client_count |
		|   Kelly	 |	Zeba	 |	     1  	|
	
		Scenarios: unsuccessful add
		| first_name | last_name | client_count |
		|   Kelli	 |	    	 |  	 0		|
		|       	 |	Zebra	 |       0		|
		|       	 |	 		 |    	 0		|