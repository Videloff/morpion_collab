require_relative "BoardCase.rb"

class Board

<<<<<<< HEAD
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

=======
    def initialize(board)
        @board = board
    
        @board_grid = [[]]
        for h in 1..CONST_HEIGHT
            for w in 1..CONST_WIDTH
                @board_grid[h,w] = 0
            end
        end
>>>>>>> 0e7f6ef6782a740cc7c827708d38b9099dd31f7d
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

<<<<<<< HEAD
        ( playerNumber == 1 ) ? symbol = 'x' : symbol = 'o'
=======
        l = choice[0]
        n = choice[1].to_i

        ( playerNumber == 1 ) ? symbol = 'X'.light_red : symbol = 'O'.light_green
>>>>>>> 0e7f6ef6782a740cc7c827708d38b9099dd31f7d

        @cells.each { |c| 
            if c.cell_name == choice
                @board[c.cell_number] = symbol
                c.is_empty = false
            end
        }
    end

    def display()
<<<<<<< HEAD
        system('cls') || system('clear')
        print @board
=======
        system('CLS') || system('clear')
        puts @board
>>>>>>> 0e7f6ef6782a740cc7c827708d38b9099dd31f7d
        print "\n"
    end

end