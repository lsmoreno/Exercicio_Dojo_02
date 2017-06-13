require 'rspec'
require 'selenium/webdriver'
require 'site_prism'
require 'cucumber'
require 'capybara/cucumber'
require 'capybara'
#require 'capybara/dsl'
require 'pry'
#require 'site_prism'
#require 'capybara-screenshot/cucumber'

#include Capybara::DSL

Capybara.register_driver :selenium do |app|
	Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.default_driver = :selenium
Capybara.default_max_wait_time = 15
Capybara.page.driver.browser.manage.window.maximize
Capybara.save_path = "reports"



#Capybara.configure do |config|
#	config.current_driver = :selenium
#	config.default_max_wait_time = 15
#	Capybara.page.driver.browser.manage.window.maximize
	#Capybara.save_path = "evidencia"
#end


