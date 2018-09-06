require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require './lib/ships'

class ShipTest < Minitest::Test

  def test_it_exists
    ship = Ship.new(5)

    assert_instance_of Ship, ship
  end

  def test_ships_have_length
    destroyer = Ship.new(2)
    submarine = Ship.new(3)

    assert_equal 2, destroyer.length
    assert_equal 3, submarine.length
  end

  def test_ships_begin_not_sunk
    destroyer = Ship.new(2)

    assert_equal false, destroyer.sunk
    assert_equal false, destroyer.sunk?
  end

  def test_ships_start_with_no_hits
    submarine = Ship.new(3)

    assert_equal 0, submarine.hits
  end

  def test_ships_can_be_hit
    submarine = Ship.new(3)

    assert_equal 1, submarine.hit
    assert_equal 1, submarine.hits
  end

  def test_ships_can_be_sunk
    submarine = Ship.new(3)

    submarine.hit
    assert_equal 1, submarine.hits
    assert_equal false, submarine.sunk?

    submarine.hit
    assert_equal 2, submarine.hits
    assert_equal false, submarine.sunk?

    submarine.hit
    assert_equal 3, submarine.hits
    assert_equal true, submarine.sunk?
  end
end
