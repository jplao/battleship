require 'pry'
class Board

  attr_reader :board_layout,
              :ships

  def initialize
    @board_layout = Array.new(4, ".").map{|row| Array.new(4, ".")}
    @ships = []
  end

  def display_board
    @board_layout.each do |x|
      p x.join(" ")
    end
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
