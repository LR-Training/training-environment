require 'open-uri'
require 'net/http'
require 'rspec/expectations'
require 'json'

require 'capybara/cucumber'

### Allows you to use the page. commands
include Capybara::DSL


Capybara.default_selector = :xpath
Capybara.default_wait_time = 10
Capybara.app_host = 'http://localhost:4567'

Capybara.default_driver = :poltergeist
Capybara.javascript_driver = :poltergeist

if (ENV['webdriver'] == 'poltergeist') then

  require 'capybara/poltergeist'

  Capybara.register_driver :poltergeist do |app|
    Capybara::Poltergeist::Driver.new(app, inspector: true, js_errors: true)
  end

else

  require 'selenium-webdriver'

  Capybara.default_driver = :selenium
  Capybara.javascript_driver = :selenium

end
