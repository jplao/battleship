class Board

  def new_game_board
    board_layout = Array.new(4, ".").map{|row| Array.new(4, ".")}
    row_label = ["1", "2", "3", "4"]
    column_label = ["A", "B", "C", "D"]

    print "\t"
    print row_label.join("\t")
    puts
    board_layout.each_with_index do |row, i|
      print column_label[i]
      print "\t"
      print row.join("\t")
    puts
    end
    board_layout
  end
end
