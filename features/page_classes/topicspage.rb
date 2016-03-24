require 'page-object'
require 'watir-webdriver'

class Topicspage
	include PageObject

	page_url 'http://global.cscc.edu/courses/course.asp?Z=&D=B&Q=SP&Y=16&C=CSCI-2994&T='

	div(:title_name, :id => 'box-header')
	
	div(:course_information, :id => 'course-info')
	
	link(:bookstore_link, :text => "View required and optional textbooks for CSCI2994.")
	
end