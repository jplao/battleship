require './lib/board'

class AI
  attr_reader :guesses

  def initialize
    @guesses = []
  end

  def guess(coordinates)
    @guesses << coordinates.to_s
    coordinates.to_s
  end

end
