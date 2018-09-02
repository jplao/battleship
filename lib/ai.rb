require './lib/board'

class AI
  attr_reader :guesses

  def initialize
    @guesses = []
  end

  def guess(coordinates = ('A'..'D').to_a.sample + rand(1..4).to_s)
    @guesses << coordinates.to_s
    coordinates.to_s
  end

end
