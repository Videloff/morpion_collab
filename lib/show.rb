require_relative "board.rb"

class Show

  def initialize(board)
    @board = board
  end

  def display()
    @board.display()
  end

end