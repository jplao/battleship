require './lib/board'

class GamePlay

  def intro(response)
    if ["p", "play"].include? response.to_s
      p "Lets's start a new game!"
    elsif ["i", "instructions"].include? response.to_s
      instructions = File.open("./lib/instructions.txt", "r")
      p instructions.read
    elsif ["q", "quit"].include? response.to_s
      p "See you next time!"
    else
      p "That is not a valid response, please try again"
      response = gets.chomp
      intro(response)
    end
  end

  def ship_layout
    # AI places ships
    layout_phase = File.open("./lib/ship_layout_phase.txt", "r")
    puts layout_phase.read
    player_destroyer_location = gets.chomp
    player_destroyer_location.upcase!
    puts "Enter the location for the three-unit ship"
    player_submarine_location = gets.chomp
    player_submarine_location.upcase!
  end

end
