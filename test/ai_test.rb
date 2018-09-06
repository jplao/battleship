require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require './lib/ai'

class AITest < Minitest::Test

  def test_it_exists
    ai = AI.new
    assert_instance_of AI, ai
  end

  def test_ai_guesses_start_empty
    ai = AI.new

    assert_equal [], ai.guesses
  end

  def test_player_ships_start_empty
    ai = AI.new

    assert_equal [], ai.ships
  end

  def test_ai_can_store_guesses
    skip
    ai = AI.new

    guess_1 = ai.guess("B4")
    guess_2 = ai.guess("A1")

    assert_equal "A1", guess_2
    assert_equal [guess_1, guess_2], ai.guesses
  end

  def test_ai_does_not_make_same_guess
    skip
    ai = AI.new

    guess_1 = ai.guess("A1")
    guess_2 = ai.guess("A1")

    refute_equal ["A1", "A1"], ai.guesses
  end

  def test_ai_can_add_ships
    ai = AI.new

    expected = ai.ships
    assert_equal expected, ai.add_ships
  end

  def test_ai_can_randommize_horizontal_or_vertical
    ai = AI.new

    assert ai.horizontal_or_vertical
  end

  def test_ai_can_randomize_start_location_of_ship
    ai = AI.new

    assert ai.randomize_start_location_of_ship
  end

  def test_ai_can_place_destroyer
    ai = AI.new

    assert ai.place_destroyer
  end

end
