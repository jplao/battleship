class Board

  attr_reader :board_layout

  def intitialize
    @board_layout
  end

  def new_game_board
    @board_layout = Array.new(4, ".").map{|row| Array.new(4, ".")}
    row_label = ["1", "2", "3", "4"]
    column_label = ["A", "B", "C", "D"]

    print "\t"
    print row_label.join("\t")
    print "\n"
    @board_layout.each_with_index do |row, i|
      print column_label[i]
      print "\t"
      print row.join("\t")
    print "\n"
    end
    @board_layout
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
      "D4" => [3, 3]
    }
  end

end
