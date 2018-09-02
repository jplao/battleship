require 'minitest/autorun'
require 'minitest/pride'
require './lib/ships'

class ShipTest < Minitest::Test

  def test_it_exists
    ship = Ship.new
    assert_instance_of Ship, ship
  end


  def test_destroyer_length_is_2
    ship = Ship.new
    assert_equal 2, ship.destroyer
  end

  def test_submarine_length_is_3
    ship = Ship.new
    assert_equal 3, ship.submarine
  end

end
