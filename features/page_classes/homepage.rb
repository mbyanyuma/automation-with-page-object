require 'page-object'
require 'watir-webdriver'

class Homepage
	include PageObject
	
	page_url 'http://www.cscc.edu'
	
	text_field(:search_field, id: 'input')

	button(:search_button, id: 'submit')
	
	def search_for(keyword)
	
		self.search_field = keyword; sleep 5
		self.search_button
	end
	
end