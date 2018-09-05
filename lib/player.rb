require './lib/ships'

class Player
  attr_reader   :guesses
  attr_accessor :ships

  def initialize
    @guesses = []
    @ships = []
  end

  def guess(coordinates)
    if @guesses.include?(coordinates)
      p "You've already guessed that location. Please guess again"
#      new_coordinates = gets.chomp
#      guess(new_coordinates)
    else
      @guesses << coordinates
    end
    coordinates
  end

  def add_ships
    destroyer = Ship.new(2)
    submarine = Ship.new(3)
    @ships << destroyer
    @ships << submarine
  end

end
