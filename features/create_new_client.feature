Feature: ability to add a new client
	As a user of sam
	I want to be able to add a new client
	So that I can associate records to clients
	
	Scenario Outline: add a client
		Given I have a client with first name "Kelly" and last name "Zeba"
		When I enter first name "<first_name>"
		  	And I enter last name "<last_name>"
			And click "add client"
			And there is no "<warning>"
		Then the should be  "<added_to_database?>"
		
		Scenarios: successful add
		| first_name | last_name | warning | add_client |
		|   Kelly	 |	Zeba	 |	 N	   |	 Y      |
	
		Scenarios: unsuccessful add
		| first_name | last_name | warning | add_client |
		|   Kelli	 |	    	 |	  Y    |     N      |
		|       	 |	Zebra	 |	  Y    |     N      |