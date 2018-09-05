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

  def test_it_can_validate_destroyer_placement
    validate = Validate.new

    actual = validate.validate_destroyer_placement("D6 B4")
    assert_equal false, actual

    actual = validate.validate_destroyer_placement("A3 F1")
    assert_equal false, actual

    actual = validate.validate_destroyer_placement("A1 A4")
    assert_equal false, actual

    actual = validate.validate_destroyer_placement("A1 C1")
    assert_equal false, actual

    actual = validate.validate_destroyer_placement("B1 C1")
    assert_equal true, actual
  end
end
