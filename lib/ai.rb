require './lib/ships'

class AI
  attr_reader :guesses,
              :ships

  def initialize
    @guesses = []
    @ships = []
  end

  def guess(coordinates = ('A'..'D').to_a.sample + rand(1..4).to_s)
    if @guesses.include?(coordinates.to_s)
      guess
    else
      @guesses << coordinates.to_s
    end
    coordinates
  end

  def place_destroyer
    start_coords = randomize_start_location_of_ship
    @ships << start_coords
    direction = horizontal_or_vertical
    local_array = start_coords.chars
    letter = local_array[0]
    num = local_array[1].to_i
    if direction == "horizontal" && num == 4
      end_coords = letter + (num - 1).to_s
      @ships << end_coords
    elsif direction == "horizontal" && num < 4
      end_coords = letter + (num + 1).to_s
      @ships << end_coords
    elsif direction == "vertical" && letter == "A"
      end_coords = "B" + num.to_s
      @ships << end_coords
    elsif direction == "vertical" && letter == "B"
      end_coords = "C" + num.to_s
      @ships << end_coords
    elsif direction == "vertical" && letter == "C"
      end_coords = "D" + num.to_s
      @ships << end_coords
    elsif direction == "vertical" && letter == "D"
      end_coords = "C" + num.to_s
      @ships << end_coords
    end
  end

  def randomize_start_location_of_ship
    ('A'..'D').to_a.sample + rand(1..4).to_s
  end

  def horizontal_or_vertical
    dir = rand(1..2)
    if dir = 1
      "horizontal"
    else
      "vertical"
    end
  end

  def add_ships
    destroyer = Ship.new(2)
    submarine = Ship.new(3)
    @ships << destroyer
    @ships << submarine
  end
end
