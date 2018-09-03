require 'minitest/autorun'
require 'minitest/pride'
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

    assert_equal expected, board.new_game_board
  end

  def test_location_keys_returns_an_array
    board = Board.new

    assert_equal [0, 0], board.location_keys["A1"]
    assert_equal [3, 2], board.location_keys["D3"]
    assert_nil board.location_keys["F7"]
  end

  def test_it_can_place_two_unit_ship_horizonal
    board = Board.new
    destroyer = Ship.new(2)
    board.new_game_board

    expected =
    [["o", "o", ".", "."],
    [".", ".", ".", "."],
    [".", ".", ".", "."],
    [".", ".", ".", "."]]

    assert_equal expected, board.place_ship(destroyer, "A1", "A2")
  end

  def test_it_can_place_two_unit_ship_vertical
    board = Board.new
    destroyer = Ship.new(2)
    board.new_game_board

    expected =
    [[".", ".", ".", "."],
    [".", ".", ".", "."],
    [".", ".", "o", "."],
    [".", ".", "o", "."]]

    assert_equal expected, board.place_ship(destroyer, "C3", "D3")
  end

  def test_it_can_hold_two_ships
    board = Board.new
    destroyer = Ship.new(2)
    board.new_game_board
    board.place_ship(destroyer, "A1", "A2")

    expected =
    [["o", "o", ".", "."],
    [".", ".", ".", "."],
    [".", ".", "o", "."],
    [".", ".", "o", "."]]

    assert_equal expected, board.place_ship(destroyer, "C3", "D3")
  end


  def test_two_ships_cant_overlap
    board = Board.new
    destroyer = Ship.new(2)
    board.new_game_board
    board.place_ship(destroyer, "A1", "A2")

    expected = "That space is already occupied, please choose another space."

    assert_equal expected, board.place_ship(destroyer, "A2", "A3")
  end

end
