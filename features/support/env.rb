require 'capybara/cucumber'
require 'selenium/webdriver'
require 'capybara/dsl'
require 'capybara'

Capybara.default_driver=:selenium

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.configure do |config|
  config.default_max_wait_time=2
end

