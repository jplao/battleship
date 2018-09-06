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

  def test_it_can_validate_ship_placement_for_2_unit_ship
    validate = Validate.new

    actual = validate.validate_ship_placement("D6 B4", 2)
    assert_equal false, actual

    actual = validate.validate_ship_placement("A1 A4", 2)
    assert_equal false, actual

    actual = validate.validate_ship_placement("A1 B2", 2)
    assert_equal false, actual

    actual = validate.validate_ship_placement("B1 C1", 2)
    assert_equal true, actual

  end

  def test_it_can_validate_ship_placement_for_3_unit_ship
    validate = Validate.new

    actual = validate.validate_ship_placement("A3 F1", 3)
    assert_equal false, actual

    actual = validate.validate_ship_placement("A1 D1", 3)
    assert_equal false, actual

    actual = validate.validate_ship_placement("A1 C2", 2)
    assert_equal false, actual

    actual = validate.validate_ship_placement("B1 B3", 3)
    assert_equal true, actual
  end

  def test_it_can_validate_a_guess_is_a_valid_coordinate
    validate = Validate.new

    actual = validate.validate_guess_is_a_valid_coordinate("F1")
    assert_equal false, actual
  end

end
