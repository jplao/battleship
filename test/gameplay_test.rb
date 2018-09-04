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
    gameplay = GamePlay.new

  end

  def test_end_game_sequence
    gameplay = GamePlay.new

  end

end
