require_relative "lib/Game.rb"
require_relative "lib/Board.rb"
require_relative "lib/Player"

require 'colorize'

########## BOARD ###########

board = "
╔═══╦═══╦═══╗
║   ║   ║   ║
╠═══╬═══╬═══╣
║   ║   ║   ║
╠═══╬═══╬═══╣
║   ║   ║   ║
╚═══╩═══╩═══╝
"

def verify_input(choice)
    return ((choice.length < 2 || choice.length > 2 )|| 
            (choice[0] !='a' && choice[0] != 'A' && choice[0] != 'b' && choice[0] != 'B' && choice[0] != 'c' && choice[0] != 'C') ||
            (choice[1].to_i < 1 || choice[1].to_i > 3)) ? false : true
end

system('cls')

board = Board.new(board)

input = gets.chomp

if verify_input(input)
    board.puts_symbol(2, input)
end

board.display()