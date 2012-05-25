Feature: ability to search for a client
	As a user of sam
	I want to be able to search for clients
	So that I can not go insane looking through papers
	
	Scenario Outline: search for a client
		Given I have a client with first name "Kelly" and last name "Zeba"
		When I enter first name "<first_name>"
		When I enter last name "<last_name>"
			And click "search"
			And there is no "<warning>"
		Then I should be able to "<find_client?>"
		
		
		Scenarios: successful search
		| first_name | last_name | warning | find_client |
		|   Kelly	 |	Zeba	 |	 N	   |	 Y       |
		|   Kelly	 |	     	 |	 N	   |	 Y       |
		|       	 |	Zeba	 |	 N	   |	 Y       |
		
		
		Scenarios: unsuccessful search
		| first_name | last_name | warning | find_client |
		|   Kelli	 |	Zeba	 |	  Y    |     N       |
		|   Kelly	 |	Zebra	 |	  Y    |     N       |
		|   Kelli	 |	Zebra	 |	  Y    |     N       |
		|   Kelli	 |	    	 |	  Y    |     N       |
		|       	 |	Zebra	 |	  Y    |     N       |
