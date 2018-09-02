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
end
