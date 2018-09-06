require './lib/ships'
require './lib/validate'

class Player
  attr_reader   :guesses
  attr_accessor :ships

  def initialize
    @guesses = []
    @ships = []
    @validate = Validate.new
  end

  def guess(coord)
    if @guesses.include? (coord)
      guessed_coords = true
      while guessed_coords == true
        guess = gets.chomp.upcase
        guessed_coords = @validate.validate_guess_is_a_valid_coordinate(guess)
      end
      @guesses << guess
      puts "Your guess has been recorded."
    else
    end
    @guesses << coord
    coord
  end
end
