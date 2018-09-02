require './lib/gameplay'

puts "Welcome to BATTLESHIP"
puts
puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
response = gets.chomp

gameplay = GamePlay.new
gameplay.intro(response)
