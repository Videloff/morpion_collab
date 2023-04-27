# require 'bundler'
# Bundler.require
require_relative "lib/board.rb"
require_relative "lib/player.rb"
require_relative "lib/show.rb"
require_relative "lib/game.rb"

# $:.unshift File.expand_path("./../lib", __FILE__)

def get_names
  puts "La partie de morpion va commencer, mais avant, veuillez choisir les pseudos des deux joueurs !"
  names = []
  print "Choisissez un pseudo pour le joueur 1\n >> "
  names[0] = gets.chomp + "-j1"
  print "Choisissez un pseudo pour le joueur 2\n >> "
  names[1] = gets.chomp + "-j2"

  return names
end

def start_new_game(player1, player2, game_number)
  game = Game.new(player1, player2)
  show = Show.new(game.board)
  show.display()

  while !game.is_Finish

    game.input_listener()
    show.display()
    game.check_solution(game_number)
    game.count_it
    if game.count == 9 && game.is_Finish == false
      puts "Personne n'a gagné cette partie."
      break
    end
  end
end

def main
  game_number = 1
  names = get_names
  restart = ""
  player1 = Player.new(1, names[0])
  player2 = Player.new(2, names[1])

  start_new_game(player1, player2, game_number)

  while (restart != "N" && restart != "n")
    puts "Score de #{player1.name} : #{player1.score} victoire(s)   |   #{player2.name} : #{player2.score} victoire(s)"
    puts "Voulez-vous refaire une partie ? (O/N)"
    restart = gets.chomp
    while (restart != "O" && restart != "o") && (restart != "N" && restart != "n")
      puts "Erreur de saisie.\nVoulez-vous refaire une partie ? (O/N)"
      restart = gets.chomp
    end
    if restart == "O" || restart == "o"
      game_number +=1
      start_new_game(player1, player2, game_number)
      restart == ""
    end
  end
  puts "Merci d'avoir joué !\nFermeture du programme."
end

main