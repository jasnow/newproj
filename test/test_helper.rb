require 'simplecov'
if ENV["COVERAGE"]
  SimpleCov.start 'rails' do
    puts "Adding simplecov"
    enable_coverage :branch
    primary_coverage :branch
  end
end

ENV["RAILS_ENV"] ||= "test"
require File.expand_path("../../config/environment", __FILE__)
require "rails/test_help"

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end
