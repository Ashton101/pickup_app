ENV["RAILS_ENV"] ||= "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'minitest/spec'
require "minitest/reporters"
Minitest::Reporters.use!
Minitest::Reporters::DefaultReporter
MiniTest::Spec.register_spec_type( /Controller$/, ControllerSpec )

class ActiveSupport::TestCase
  ActiveRecord::Migration.check_pending!

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  #
  # Note: You'll currently still have to declare fixtures explicitly in integration tests
  # -- they do not yet inherit this setting
  fixtures :all
  extend Minitest::Spec::DSL
  # Add more helper methods to be used by all tests here...

  register_spec_type self do |desc|
    desc < ActiveSupport::Base if desc.is_a? Class
  end

  include Devise::TestHelpers
end

