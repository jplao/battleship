require './lib/gameplay'

class Battleship

  def intro(response = gets.chomp)
    if ["p", "play"].include? response.to_s
      puts "Lets's start a new game!"
      new_game = GamePlay.new
      new_game.ship_layout
    elsif ["i", "instructions"].include? response.to_s
      instructions = File.open("./lib/instructions.txt", "r")
      print instructions.read
      print "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
      intro
    elsif ["q", "quit"].include? response.to_s
      p "See you next time!"
    else
      print "That is not a valid response, please try again"
      print "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
      intro
    end
  end

end

game = Battleship.new
puts "Welcome to BATTLESHIP"
puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
game.intro
