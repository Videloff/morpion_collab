require_relative "lib/Board.rb"
<<<<<<< HEAD
require_relative "lib/Player.rb"
require_relative "lib/Show.rb"
=======
require_relative "lib/player"
>>>>>>> 0e7f6ef6782a740cc7c827708d38b9099dd31f7d

require 'colorize'

def verify_input(choice)
    return ((choice.length < 2 || choice.length > 2 )|| 
            (choice[0] !='a' && choice[0] != 'A' && choice[0] != 'b' && choice[0] != 'B' && choice[0] != 'c' && choice[0] != 'C') ||
            (choice[1].to_i < 1 || choice[1].to_i > 3)) ? false : true
end

<<<<<<< HEAD
game = Game.new("Vince", "Zine")
show = Show.new(game.board)

while !game.is_Finish
=======
board = Board.new(board)
>>>>>>> 0e7f6ef6782a740cc7c827708d38b9099dd31f7d

    game.input_listener()
    show.display()

<<<<<<< HEAD
end
=======
if verify_input(input)
    board.puts_symbol(1, input)
end

board.display()

input = gets.chomp

if verify_input(input)
    board.puts_symbol(2, input)
end

board.display()
# puts "x".ord

# puts String.colors
>>>>>>> 0e7f6ef6782a740cc7c827708d38b9099dd31f7d
