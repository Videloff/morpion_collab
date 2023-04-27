require_relative "Board.rb"

class Show

    def initialize(board)
        @board = board
    end

    def display()
        @board.display()
    end

end