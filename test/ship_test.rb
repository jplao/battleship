require 'minitest/autorun'
require 'minitest/pride'
require './lib/ships'

class ShipTest < Minitest::Test

  def test_it_exists
    ship = Ship.new
    assert_instance_of Ship, ship
  end

end
