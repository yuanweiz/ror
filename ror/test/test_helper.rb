ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
   #fixtures :all
    Rails.application.load_seed
    #load seeds.rb here?
    #def setup
    #    #puts "ActiveSupport::TestCase#setup"
    #    #Rails.application.load_seed
    #end 

  # Add more helper methods to be used by all tests here...
end
