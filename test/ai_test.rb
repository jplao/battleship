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

    assert_equal nil, ai.guesses
  end

end
