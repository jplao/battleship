require './lib/ships'

class Player
  attr_reader   :guesses
  attr_accessor :ships

  def initialize
    @guesses = []
    @ships = []
  end

  def guess
    guessed_coords = true
    while guessed_coords == true
      coordinates = gets.chomp.upcase
      if guessed_coords = @guesses.include? coordinates
        puts "You've already guessed that location. Please guess again"
        return guessed_coords
      else
        puts "Your guess has been recorded."
        @guesses << coordinates
      end
    end
    coordinates
  end
end
