Feature: Rubular Test
	As a student
	I want to make sure the instructor has a valid email address
	So I can ask questions
	
Scenario: Testing an email address
		Given I am at the rubular homepage
		When I enter a regular expression for a full email address
		Then I should be able to test an email address
		
Scenario: Returning a match result
		When I test the string "jdenen@cscc.edu"
		Then I get a match result of "jdenen@cscc.edu"
		
Scenario: Returning a match group
		When I test the string "jdenen@cscc.edu"
		Then I get three match groups; "jdenen", "cscc", "edu"
		
Scenario: Match group formatted in new line
		When I test the string "jdenen@cscc.edu"
		Then the match group is formatted in new line
		
Scenario: Match group preceded by an index number
		When I test the string "jdenen@cscc.edu"
		Then the match group is preceded by an index number