require 'page-object'
require 'watir-webdriver'

class Rubularhomepage
	include PageObject
	
	page_url 'http://www.rubular.com'
	
	text_field(:regex_box, :id => 'regex')
	
	text_area(:text_email, :name => 'test')
	
	div(:error_result, :class => 'error')
	
	div(:match_result, :id => 'result')
	
	def type_regex(keyword)
	
		self.regex_box = keyword; sleep 5
		
	end
	
	def type_email(email)
	
		self.text_email = email; sleep 5
		
	end
end