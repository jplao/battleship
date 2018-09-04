require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/validate'

class ValidateTest < Minitest::Test

  def test_it_exists
    validate = Validate.new
    assert_instance_of Validate, validate
  end
end
