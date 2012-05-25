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
			And there is no "<warning>"
		Then it should be "<added_to_database?>"
		
		Scenarios: successful add
		| first_name | last_name | warning | added_to_database? |
		|   Kelly	 |	Zeba	 |	 false |		 Y    	    |
	
		Scenarios: unsuccessful add
		| first_name | last_name | warning | added_to_database? |
		|   Kelli	 |	    	 |	 true  |    	 N          |
		|       	 |	Zebra	 |	 true  |    	 N          |
		|       	 |	 		 |   true  |    	 N          |