require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/battleship'
require './lib/gameplay'

class BattleshipTest < Minitest::Test

  def test_it_exists
    game = Battleship.new
    assert_instance_of Battleship, game
  end

  def test_intro_sequence_works
    gameplay = Battleship.new

    instructions = File.open("./lib/instructions.txt", "r")
    expected = print instructions.read
    assert_equal expected, gameplay.intro("i")
    assert_equal expected, gameplay.intro("instructions")

    assert_equal "See you next time!", gameplay.intro("q")
    assert_equal "See you next time!", gameplay.intro("quit")

    assert gameplay.intro(1)
  end
end
