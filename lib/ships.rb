require './lib/board'
class Ship

  attr_reader :length,
              :hits

  def initialize(length)
    @length = length
    @sunk = false
    @hits = 0
  end

  def sunk?
    if @hits == @length
      @sunk = true
    end
    @sunk
  end

  def hit
    @hits += 1
  end

  def place(row ,column, horizonal)
    if horizontal == true
      column_end_position = column + @length - 1
      [row][column]..[row][column_end_position] = "o"
    elsif horizontal == false
      row_end_position = row + @length - 1
    end
  end

  def covers?(row, column)
  end
end
