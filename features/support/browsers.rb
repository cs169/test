# frozen_string_literal: true

# Original Source
# https://gist.github.com/bbonamin/4b01be9ed5dd1bdaf909462ff4fdca95
require 'capybara/rspec'
require 'selenium/webdriver'

Capybara.server = :puma, { Silent: true }

# ### DRIVERS LIST
# These control what browser is used.
# e.g. BROWSER=firefox cucumber
# Capybara pre-registers a number of named drivers that use Selenium - they are:
# :selenium => Selenium driving Firefox
# :selenium_headless => Selenium driving Firefox in a headless configuration
# :selenium_chrome => Selenium driving Chrome
# :selenium_chrome_headless => Selenium driving Chrome in a headless configuration
# https://github.com/teamcapybara/capybara#selenium

# TODO: Investigate the apparation driver.
if ENV['BROWSER'].present?
  puts "REQUESTED BROWSER #{ENV['BROWSER']}"
  # be nice and accept 'Headless Chrome', spaces, etc.
  Capybara.default_driver = ENV['BROWSER'].parameterize.underscore.to_sym
elsif ENV['GUI'].present?
  Capybara.default_driver = :selenium_chrome
else
  Capybara.default_driver = :selenium_chrome_headless
end

puts "RUNNING CAPYBARA WITH BROWSER #{Capybara.default_driver.to_s.humanize}"
