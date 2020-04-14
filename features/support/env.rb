require 'cucumber'
require 'rspec'
require 'selenium-webdriver'
require 'capybara'
require 'capybara/dsl'
require 'site_prism'

Capybara.register_driver :site_prism do |app|
  browser = ENV.fetch('browser', 'firefox').to_sym
  Capybara::Selenium::Driver.new(app, browser: browser, desired_capabilities: capabilities)
end

Capybara.configure do |config|
  config.default_driver = :site_prism
end

Capybara.default_driver = :selenium_chrome
Capybara.app_host = 'https://tjmaher.github.io/test/values.html'
Capybara.default_max_wait_time = 10

World(Capybara::DSL)
