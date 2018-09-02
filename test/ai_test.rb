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

  def test_ai_can_store_guesses
    ai = AI.new

    guess_1 = ai.guess("B4")
    guess_2 = ai.guess("A1")

    assert_equal "A1", guess_2
    assert_equal [guess_1, guess_2], ai.guesses
  end

end
