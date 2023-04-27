require_relative "board.rb"
require_relative "player.rb"


class Game
    attr_accessor :is_Finish, :board

    def initialize(p1, p2)
        @currentPlayer = rand(1..2)
        @board = Board.new()
        @players = []
        @players[1] = Player.new(p1)
        @players[2] = Player.new(p2)
        @is_Finish = false
    end

    def input_listener()
        if (@currentPlayer==1) then @currentPlayer = 2 elsif (@currentPlayer==2) then @currentPlayer = 1 end
        print "Au tour de #{@players[@currentPlayer].name }: "
        choice = gets.chomp

        while !verify_input(choice)
            print "Votre saisie n'est pas correcte !\n"
            choice = gets.chomp
        end

        while !@board.verify_placement(choice)
            print "Cette case est déjà prise !\n"
            choice = gets.chomp
        end

        board.puts_symbol(@currentPlayer, choice)
    end

    def verify_input(choice)
        return ((choice.length < 2 || choice.length > 2 )|| 
                (choice[0] !='a' && choice[0] != 'A' && choice[0] != 'b' && choice[0] != 'B' && choice[0] != 'c' && choice[0] != 'C') ||
                (choice[1].to_i < 1 || choice[1].to_i > 3)) ? false : true
    end

end