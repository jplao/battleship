require './lib/board'
require './lib/player'
require './lib/ships'
require './lib/ai'
require './lib/validate'

class GamePlay

  def initialize
    @player_board = Board.new
    @ai_board = Board.new
    @player = Player.new
    @ai = AI.new
    @validate = Validate.new
  end

  def ship_layout
    # AI places ships
    layout_phase = File.open("./lib/ship_layout_phase.txt", "r")
    print layout_phase.read
    player_destroyer_placement
  end

  def player_destroyer_placement
    validate_response = false
    while validate_response == false
      player_destroyer_location = gets.chomp.upcase
      validate_response = @validate.validate_ship_placement(player_destroyer_location, 2)
    end
    @player.ships << player_destroyer_location
    player_submarine_placement
  end

  def player_submarine_placement
    puts "Enter the start and end locations for the three-unit ship"
    validate_response = false
    while validate_response == false
      player_submarine_location = gets.chomp.upcase
      validate_response = @validate.validate_ship_placement(player_submarine_location, 3)
    end
    @player.ships << player_submarine_location
    game_sequence
  end

  def game_sequence
    player_shot
    ai_shot
  end

  def player_shot
    puts "Please enter a coordinate to fire on"
    coordinates = gets.chomp
    shot = @player.guess(coordinates)
    #if shot == "o" on ai_ship_board
      # then ship.hit
      # put "h" on coodinates on player_guess_board
    #else put "m" on coodinates on player_guess_board

    puts "Here are the shots you've taken"
    @ai_board.display_board
    #all_ships_sunk?(@player)
  end

  def ai_shot
    shot = @ai.guess
    #if shot == "o" on player_ship_board
      # then ship.hit
      # put "h" on coodinates on player_ship_board
    #else put "m" on coordinates on player_ship_board
    #display player_ship_board
    puts "Here are the shots the computer has taken"
    @player_board.display_board
    #all_ships_sunk?(@ai)
    game_sequence
  end

  def all_ships_sunk?(player)
    if player.ships.all? do |ship|
        ship.sunk?
      end
      true
      end_game_sequence
    end
  end

  def end_game_sequence
    #puts "The computer made #{@ai.guesses.count} shots."
    #puts "You made #{@player.guesses.count} shots."
  end
end
