Feature: Course Listing
	As a student
	I want to find the special topics course
	So that I can learn Cucumber
	
Scenario: Searching for a Course to get result
		When I search for "csci 2994"
		Then I get more than 1 results
		
Scenario: Title on the page result
		When I search for the page title
		Then I get a title "CSCI-2994-CSCI Current Topics"
		
Scenario: Checking for prerequisites
		When I view the prerequisites
		Then I get no listing for prerequisites
		
Scenario:Checking for textbooks
		When I view "Textbooks"
		Then I get a link to the bookstore
	
	