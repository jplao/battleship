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

  def test_ship_layout_works
    gameplay = GamePlay.new
    assert gameplay.ship_layout
  end

  def test_it_can_validate_coordinates
    gameplay = GamePlay.new

    expected = "dskgh"
    assert_equal expected, gameplay.validate
  end

  def test_game_sequence
    gameplay = GamePlay.new
  end

  def test_player_shot
    gameplay = GamePlay.new

  end

  def test_ai_shot
    gameplay = GamePlay.new

  end

  def test_all_ships_sunk?
    skip
    gameplay = GamePlay.new
    player = Player.new
    player.ships[0].hit
    player.ships[0].hit
    player.ships[1].hit
    player.ships[1].hit
    player.ships[1].hit

    assert_equal true, gameplay.all_ships_sunk?(player)
  end

  def test_end_game_sequence
    gameplay = GamePlay.new
  end

end
