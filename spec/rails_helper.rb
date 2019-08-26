ENV['RAILS_ENV'] = ARGV.first || ENV['RAILS_ENV'] || 'test'
require 'simplecov'
SimpleCov.start 'rails'
require File.expand_path('../../config/environment', __FILE__)
# Prevent database truncation if the environment is production
abort("The Rails environment is running in production mode!") if Rails.env.production?
require 'spec_helper'
require 'rspec/rails'
# require database cleaner at the top level
require 'database_cleaner'

# [...]
# configure shoulda matchers to use rspec as the test framework and full matcher libraries for rails
Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :rspec
    with.library :rails
  end
end

# [...]
RSpec.configure do |config|
  # [...]
  # add `FactoryBot` method
  config.include FactoryBot::Syntax::Methods


  # start the transaction strategy as examples are run
  
  # [...]
end