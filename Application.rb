require_relative "lib/Board.rb"
require_relative "lib/Player.rb"
require_relative "lib/Show.rb"

require 'colorize'

def verify_input(choice)
    return ((choice.length < 2 || choice.length > 2 )|| 
            (choice[0] !='a' && choice[0] != 'A' && choice[0] != 'b' && choice[0] != 'B' && choice[0] != 'c' && choice[0] != 'C') ||
            (choice[1].to_i < 1 || choice[1].to_i > 3)) ? false : true
end

game = Game.new("Vince", "Zine")
show = Show.new(game.board)

while !game.is_Finish

    game.input_listener()
    show.display()

end
