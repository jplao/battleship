class Player

  attr_reader :guesses

  def initialize
    @guesses = []
  end

  def guess(coordinates)
    if @guesses.include?(coordinates.to_s)
      p "You've already guessed that location. Please guess again"
      new_coordinates = gets.chomp
      guess(new_coordinates)
    else
      @guesses << coordinates.to_s
    end
    coordinates.to_s
  end

end
