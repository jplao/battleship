require './lib/board'
class Validate

  def validate_ship_placement(input, ship_size)
    board = Board.new
    ship_coords = input.split
    start_coords = board.location_keys[ship_coords[0]]
    end_coords = board.location_keys[ship_coords[1]]
    if start_coords == nil || end_coords == nil
      puts "That location does not exist."
      return false
    elsif ((end_coords[0] - start_coords[0]) > (ship_size - 1)) || (end_coords[1] - start_coords[1]) > (ship_size - 1)
      puts "Start and end locations must be #{ship_size} units apart"
      return false
    elsif start_coords[0] != end_coords [0] && start_coords[1] != end_coords[1]
      puts "Ships cannot be placed diagonally"
      return false
    else
      puts "Your ship location has been recorded"
      true
    end
  end
end
