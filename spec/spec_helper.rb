require "sauce"
require "sauce/capybara"
require "capybara/rspec"

Sauce.config do |c|
  c[:start_tunnel] = false
  c[:browsers] = [
    ["Windows 8", "Internet Explorer", "10"],
    ["Windows 7", "Firefox", "20"],
    ["OS X 10.10", "Safari", "8"],
    ["Linux", "Chrome", 40]
  ]
end

Capybara.default_driver = :sauce
Capybara.javascript_driver = :sauce

RSpec.configure do |config|
  config.include Capybara::DSL
  config.include Capybara::RSpecMatchers
end
