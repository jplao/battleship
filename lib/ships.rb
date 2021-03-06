class Ship
  attr_reader :length,
              :sunk,
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
end
