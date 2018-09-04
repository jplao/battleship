require 'pry'
class Board

  attr_reader :board_layout,
              :ships

  def initialize
    @board_layout = Array.new(4, ".").map{|row| Array.new(4, ".")}
    @ships = []
  end


  def place_ship(ship, start, finish)
    ship_coord_start = location_keys[start]
    ship_coord_finish = location_keys[finish]
    start = @board_layout[ship_coord_start[0]][ship_coord_start[1]]
    finish = @board_layout[ship_coord_finish[0]][ship_coord_finish[1]]
    if start == "." && finish == "."
      @board_layout[ship_coord_start[0]][ship_coord_start[1]] = "o"
      @board_layout[ship_coord_finish[0]][ship_coord_finish[1]] = "o"
      @board_layout
    else
      p "That space is already occupied, please choose another space."
    end
  end

  def display_board
    p @board_layout
  end

  def location_keys
    { "A1" => [0, 0],
      "A2" => [0, 1],
      "A3" => [0, 2],
      "A4" => [0, 3],
      "B1" => [1, 0],
      "B2" => [1, 1],
      "B3" => [1, 2],
      "B4" => [1, 3],
      "C1" => [2, 0],
      "C2" => [2, 1],
      "C3" => [2, 2],
      "C4" => [2, 3],
      "D1" => [3, 0],
      "D2" => [3, 1],
      "D3" => [3, 2],
      "D4" => [3, 3]}
  end
end
