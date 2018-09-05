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
    puts layout_phase.read
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
    puts "Enter the location for the three-unit ship"
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

    #shot = @player.guess(coordinates)
    #if shot == "o" on ai_ship_board
      # then ship.hit
      # put "h" on coodinates on player_guess_board
    #  all_ships_sunk?(@player)
    #else put "m" on coodinates on player_guess_board
    #display player_guess_board
  end

  def ai_shot
    shot = @ai.guess
    #if shot == "o" on player_ship_board
      # then ship.hit
      # put "h" on coodinates on player_ship_board
      all_ships_sunk?(@ai)
    #else put "m" on coordinates on player_ship_board
    #display player_ship_board
    game_sequence
  end

  def all_ships_sunk?(player)
    if player.ships.all? do |ship|
        ship.sunk?
      end
      true
    end
  end

  def end_game_sequence
    #puts "The computer made #{@ai.guesses.count} shots."
    #puts "You made #{@player.guesses.count} shots."
  end

  def validate
  end

end
