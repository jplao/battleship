require './lib/board'

class Validate

  def validate_destroyer_placement(input)
    board = Board.new
    ship_coords = input.split
    start_coords = board.location_keys[ship_coords[0]]
    end_coords = board.location_keys[ship_coords[1]]
    if start_coords == nil || end_coords == nil
      "That location does not exist."
    end
  end

end
