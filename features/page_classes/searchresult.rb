require 'page-object'

class Result
	include PageObject
	
	div(:search_result, :class => 'gs-title')
	
end