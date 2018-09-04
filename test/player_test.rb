require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require './lib/player'

class PlayerTest < Minitest::Test

  def test_it_exists
    player = Player.new
    assert_instance_of Player, player
  end

  def test_player_guesses_start_empty
    player = Player.new

    assert_equal [], player.guesses
  end

  def test_player_can_store_guesses
    player = Player.new

    guess_1 = player.guess("B4")
    guess_2 = player.guess("A1")

    assert_equal "A1", guess_2
    assert_equal [guess_1, guess_2], player.guesses
  end

  def test_player_cant_guess_the_same_guess_twice
    player = Player.new

    guess_1 = player.guess("A1")
    guess_2 = player.guess("B4")

    refute_equal "A1", player.guess("A1")
    refute_equal "B4", player.guess("A1")
  end

end
