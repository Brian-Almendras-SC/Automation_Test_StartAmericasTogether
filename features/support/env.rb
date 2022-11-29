begin require 'rspec/expectations'; rescue LoadError; require 'spec/expectations'; end
require 'capybara'
require 'capybara/dsl'
require 'capybara/cucumber'
require 'capybara-screenshot/cucumber'      

Capybara.app_host = ENV["CAPYBARA_HOST"]
#Account
ENV['USERL']='lider@gmail.com'
ENV['USERV']='voluntario@gmail.com'
ENV['USERC']='coreteam@gmail.com'
ENV['PASS']='123456'

Capybara.default_max_wait_time = 15
Capybara.default_driver = :selenium
Capybara.app_host = "https://testing-start.web.app"

class CapybaraDriverRegistrar
    # register a Selenium driver for the given browser to run on the localhost
    def self.register_selenium_driver(browser)
      Capybara.register_driver :selenium do |app|
        Capybara::Selenium::Driver.new(app, :browser => browser)
      end
    end
  
end

CapybaraDriverRegistrar.register_selenium_driver(:chrome)
Capybara.run_server = false