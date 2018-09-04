require './lib/board'

class GamePlay

  def initialize
    player_ship_board = Board.new
    player_guess_board = Board.new
    ai_ship_board = Board.new
    ai_guess_board = Board.new
  end

  def ship_layout
    # AI places ships
    layout_phase = File.open("./lib/ship_layout_phase.txt", "r")
    puts layout_phase.read
    player_destroyer_location = gets.chomp
    player_ship_board.ships << player_destroyer_location.upcase!
    puts "Enter the location for the three-unit ship"
    player_submarine_location = gets.chomp
    player_ship_board.ships << player_submarine_location.upcase!
    game_sequence
  end

  def game_sequence
    player_shot
    ai_shot
    if all_ships_sunk?
      end_game_sequence
    else game_sequence
    end
  end
end
