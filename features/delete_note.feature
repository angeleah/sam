Feature: deleting an appointment
	As a logged in user 
	I want to be able to delete a record
	So that I can remove records I do not need
	
	Scenario: warning message appears before deleting a record
		Given I am logged in as Angeleah
			And I have 3 records
		When I click the delete button
		Then a message 'are you sure you want to delete this record' should appear
		And the options in the confirmation message should read 'Yes' or 'No'
		
	Scenario: selecting 'yes' on the warning confirmation message to successfully delete a record
		Given I am logged in as Angeleah
			And I have 3 records
		When I click the delete button
		 And then I click 'yes' to the confirmation message
		Then the record should successfully delete and
			Then I should have 2 records
		
	Scenario:	selecting 'no' on the warning confirmation message to keep a record
		Given I am logged in as Angeleah
			And I have 3 records
		When I click the delete button
			And then I click 'no' to the confirmation message
		Then the record should not delete and
			Then I should have 3 records