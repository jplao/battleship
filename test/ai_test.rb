require 'minitest/autorun'
require 'minitest/pride'
require './lib/ai'

class AITest < Minitest::Test

  def test_it_exists
    ai = AI.new
    assert_instance_of AI, ai
  end

end
