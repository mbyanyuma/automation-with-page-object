require 'page-object'
require 'watir-webdriver'
require 'cucumber'
include PageObject::PageFactory


#Scenario: Searching for a Course to get result

When(/^I search for "csci 2994"$/)do
	visit_page(Homepage) do |page|
		page.search_for 'csci 2994'
	end
end

Then(/^I get more than 1 results$/)do
	on_page(Result) do |page|
		expect(page.search_result.size).to be > 0
	end
end


#Scenario: Title on the page result 

When(/^I search for the page title$/)do
	visit_page(Topicspage) do |page|
		@result = page.title_name 
	end
end

Then(/^I get a title "CSCI-2994-CSCI Current Topics"$/)do
	@key = "CSCI-2994 - CSCI Current Topics"
	expect(@result).to include(@key)
end


#Scenario: Checking for prerequisites

When(/^I view the prerequisites$/) do
	visit_page(Topicspage) do |page|
		@result = page.course_information 
	end
end

Then(/^I get no listing for prerequisites$/) do
	@prerequisite = 'None'
	expect(@result).to include(@prerequisite)
end


#Scenario:Checking for textbooks

When(/^I view "Textbooks"$/) do
	visit_page(Topicspage) do |page|
		@result = page.bookstore_link? 
	end
end

Then(/^I get a link to the bookstore$/) do
	@key = true
	expect(@result).to eq(@key)
end