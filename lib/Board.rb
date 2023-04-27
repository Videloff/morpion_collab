require_relative "BoardCase.rb"

class Board

    def initialize()
        @board = "
        ╔═══╦═══╦═══╗
        ║   ║   ║   ║
        ╠═══╬═══╬═══╣
        ║   ║   ║   ║
        ╠═══╬═══╬═══╣
        ║   ║   ║   ║
        ╚═══╩═══╩═══╝
        "
        
        @cells = Array.new()

        @cells << BoardCase.new("a1")
        @cells << BoardCase.new("a2")
        @cells << BoardCase.new("a3")

        @cells << BoardCase.new("b1")
        @cells << BoardCase.new("b2")
        @cells << BoardCase.new("b3")

        @cells << BoardCase.new("c1")
        @cells << BoardCase.new("c2")
        @cells << BoardCase.new("c3")

    end

    def verify_placement(choice)
        if choice[0] == choice[0].upcase
            choice[0] = choice[0].downcase
        end
        @cells.each { |c| 
            if c.cell_name == choice
                if c.is_empty
                    return true
                else
                    return false
                end
            end
        }
    end

    # L = LETTER / N = NUMBER
    def puts_symbol(playerNumber, choice)

        ( playerNumber == 1 ) ? symbol = 'x' : symbol = 'o'

        @cells.each { |c| 
            if c.cell_name == choice
                @board[c.cell_number] = symbol
                c.is_empty = false
            end
        }
    end

    def display()
        system('cls') || system('clear')
        print @board
        print "\n"
    end

end