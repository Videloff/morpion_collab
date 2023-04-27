require_relative "board.rb"
require_relative "player.rb"

class Game
attr_accessor :is_Finish, :board, :winner, :count

  def initialize(p1, p2)
    @count = 0
    @winner = ""
    @currentPlayer = rand(1..2)
    @board = Board.new()
    @players = Array.new
    @players[1] = p1
    @players[2] = p2
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

    @board.puts_symbol(@currentPlayer, choice)
  end

  def count_it
    @count += 1
    puts @count
  end

  def verify_input(choice)
    return ((choice.length < 2 || choice.length > 2 )|| 
    (choice[0] !='a' && choice[0] != 'A' && choice[0] != 'b' && choice[0] != 'B' && choice[0] != 'c' && choice[0] != 'C') ||
    (choice[1].to_i < 1 || choice[1].to_i > 3)) ? false : true
  end

  def check_solution(game_number)

    for i in 1..2
        #Lignes horizontales
      if (@board.board[33] == @players[i].symbol && @board.board[37] == @players[i].symbol && @board.board[41] == @players[i].symbol) || 
        (@board.board[77] == @players[i].symbol && @board.board[81] == @players[i].symbol && @board.board[85] == @players[i].symbol) ||
        (@board.board[121] == @players[i].symbol && @board.board[125] == @players[i].symbol && @board.board[129] == @players[i].symbol) ||
        #Lignes verticales
        (@board.board[33] == @players[i].symbol && @board.board[77] == @players[i].symbol && @board.board[121] == @players[i].symbol) ||
        (@board.board[37] == @players[i].symbol && @board.board[81] == @players[i].symbol && @board.board[125] == @players[i].symbol) ||
        (@board.board[41] == @players[i].symbol && @board.board[85] == @players[i].symbol && @board.board[129] == @players[i].symbol) ||
        #Lignes diagonales
        (@board.board[33] == @players[i].symbol && @board.board[81] == @players[i].symbol && @board.board[129] == @players[i].symbol) ||
        (@board.board[41] == @players[i].symbol && @board.board[81] == @players[i].symbol && @board.board[121] == @players[i].symbol)

        @winner = @players[i].name
        @is_Finish = true
        @players[i].add_score
        puts "#{@players[i].name} a gagné la partie #{game_number} !"
      end
    end
  end 

end