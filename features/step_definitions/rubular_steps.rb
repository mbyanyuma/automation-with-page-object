require 'page-object'
require 'watir-webdriver'
require 'cucumber'
include PageObject::PageFactory


#Scenario: Testing an email address
Given(/I at the rubular homepage$/)do
	@browser.goto 'http://www.rubular.com'
end

When(/^I enter a regular expression for a full email address$/) do
	visit_page(Rubularhomepage) do |page|
		@entry1 = page.type_regex '(.*)@(.*)\.(.*)'
		@entry2 = page.type_email 'jdenen@cscc.edu'
		@error = page.error_result?
	end
end

Then(/^I should be able to test an email address$/) do
		
	@key = false
	expect(@error).to eq(@key)
end


#Scenario: Returning a match result
When(/^I test the string "jdenen@cscc.edu"$/) do
	visit_page(Rubularhomepage) do |page|
		@entry1 = page.type_regex '(.*)@(.*)\.(.*)'
		@entry2 = page.type_email 'jdenen@cscc.edu'	
		@result = page.match_result
	end
end

Then(/^I get a match result of "jdenen@cscc.edu"$/) do
	@answer = 'jdenen@cscc.edu'
	expect(@result).to include(@answer)
end


#Scenario: Returning a match group
Then(/^I get three match groups; "jdenen", "cscc", "edu"$/) do
	
	@answer2 = 'jdenen'
	expect(@result).to include(@answer2)
end

#Scenario: Match group formatted in new line

Then(/^the match group is formatted in new line$/) do

	@answer3 = "\n"
	expect(@result).to include(@answer3)
end


#Scenario: Match group preceded by an index number  

Then(/^the match group is preceded by an index number$/) do

	@answer4 = "1."
	expect(@result).to include(@answer4)
end