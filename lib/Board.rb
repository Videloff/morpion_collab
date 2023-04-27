CONST_WIDTH = 3
CONST_HEIGHT = 3

class Board
    attr_accessor :board_grid

    def initialize(board)
        @board = board
    
        @board_grid = [[]]
        for h in 1..CONST_HEIGHT
            for w in 1..CONST_WIDTH
                @board_grid[h,w] = 0
            end
        end
    end
    # L = LETTER / N = NUMBER
    def puts_symbol(playerNumber, choice)

        l = choice[0]
        n = choice[1].to_i

        ( playerNumber == 1 ) ? symbol = 'X'.light_red : symbol = 'O'.light_green

        case l
            when 'a','A'
                case n
                    when 1
                        @board[17] = symbol
                    when 2
                        @board[21] = symbol
                    when 3
                        @board[25] = symbol
                end

            when 'b', 'B'
                case n
                when 1
                    @board[45] = symbol
                when 2
                    @board[49] = symbol
                when 3
                    @board[53] = symbol
            end

            when 'c', 'C'
                case n
                when 1
                    @board[73] = symbol
                when 2
                    @board[77] = symbol
                when 3
                    @board[81] = symbol
            end
        end
    end

    def display()
        system('CLS') || system('clear')
        puts @board
        print "\n"
    end

end