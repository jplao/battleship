require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/gameplay'

class GamePlayTest < Minitest::Test

  def test_it_exists
    gameplay = GamePlay.new
    assert_instance_of GamePlay, gameplay
  end

  def test_all_ships_sunk?
    gameplay = GamePlay.new
    player = Player.new
    destroyer = Ship.new(2)
    submarine = Ship.new(3)
    player.ships << destroyer
    player.ships << submarine

    player.ships[0].hit
    player.ships[0].hit
    refute gameplay.all_ships_sunk?(player)

    player.ships[1].hit
    player.ships[1].hit
    player.ships[1].hit

    assert_equal true, gameplay.all_ships_sunk?(player)
  end
end
