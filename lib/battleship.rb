require './lib/board'

puts "Welcome to BATTLESHIP"
puts
puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
response = gets.chomp

if ["p", "play"].include? response.to_s
  puts "Lets's start a new game!"
  board = Board.new
  board.new_game_board
elsif ["i", "instructions"].include? response.to_s
  instructions = File.open("./lib/instructions.txt", "r")
  puts instructions.read
elsif ["q", "quit"].include? response.to_s
  puts "See you next time!"
end
