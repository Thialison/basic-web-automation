# frozen_string_literal: true

require_relative 'helper_page.rb'
require 'bundler'
require 'capybara/cucumber'
Bundler.require(:default)

World(Pages)

Capybara.register_driver :selenium do |app|
  capabilities = Selenium::WebDriver::Remote::Capabilities.chrome(
    chromeOptions: { args: %w[disable-infobars --disable-dev-shm-usage --no-sandbox window-size=1920,1080] }
  )
  Capybara::Selenium::Driver.new(app, browser: :chrome, desired_capabilities: capabilities)
end

Capybara.default_driver = :selenium
Capybara.default_max_wait_time = 5
