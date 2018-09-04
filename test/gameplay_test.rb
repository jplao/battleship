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

  def test_intro_sequence_works
    gameplay = GamePlay.new

    assert_equal "Lets's start a new game!", gameplay.intro("p")
    assert_equal "Lets's start a new game!", gameplay.intro("play")

    instructions = File.open("./lib/instructions.txt", "r")
    expected = p instructions.read
    assert_equal expected, gameplay.intro("i")
    assert_equal expected, gameplay.intro("instructions")

    assert_equal "See you next time!", gameplay.intro("q")
    assert_equal "See you next time!", gameplay.intro("quit")

    assert gameplay.intro(1)
  end

  def test_ship_layout_works
    gameplay = GamePlay.new
    assert gameplay.ship_layout
  end
end
