require 'watir-webdriver'
require 'cucumber'


Before do
	@browser = Watir::Browser.new
end

After do
	@browser.close
end