require './lib/ships'

class AI
  attr_reader :guesses,
              :ships

  def initialize
    @guesses = []
    @ships = []
  end

#  def guess(coordinates = ('A'..'D').to_a.sample + rand(1..4).to_s)
#    if @guesses.include?(coordinates.to_s)
#      #guess
#    else
#      @guesses << coordinates.to_s
#    end
#    coordinates.to_s
#  end

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
