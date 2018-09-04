require './lib/board'

class Validate

  def validate_destroyer_placement(input)
    board = Board.new
    ship_coords = input.split
    start_coords = board.location_keys[ship_coords[0]]
    end_coords = board.location_keys[ship_coords[1]]
    if start_coords == nil || end_coords == nil
      puts "That location does not exist."
      return false
    elsif ((end_coords[0] - start_coords[0]) > 1) || (end_coords[1] - start_coords[1]) > 1
      puts "Destroyer start and end locations must be next to each other"
      return false
    else
      puts "Your destroyer location has been recorded"
      return true
    end
  end

end
