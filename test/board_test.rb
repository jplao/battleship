require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/board'
require './lib/ships'

class BoardTest < Minitest::Test

  def test_it_exists
    board = Board.new
    assert_instance_of Board, board
  end

  def test_new_game_board_can_be_created
    board = Board.new

    expected =
    [[".", ".", ".", "."],
    [".", ".", ".", "."],
    [".", ".", ".", "."],
    [".", ".", ".", "."]]

    assert_equal expected, board.board_layout
  end

  def test_ships_start_empty
    board = Board.new

    assert_equal [], board.ships
  end

  def test_location_keys_returns_an_array
    board = Board.new

    assert_equal [0, 0], board.location_keys["A1"]
    assert_equal [3, 2], board.location_keys["D3"]
    assert_nil board.location_keys["F7"]
  end

  def test_it_can_display_board
    board = Board.new

    expected =
    [[".", ".", ".", "."],
    [".", ".", ".", "."],
    [".", ".", ".", "."],
    [".", ".", ".", "."]]
    assert_equal expected, board.display_board
  end
end
