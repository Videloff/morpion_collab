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
  names[0] = gets.chomp + " - j1"
  print "Choisissez un pseudo pour le joueur 2\n >> "
  names[1] = gets.chomp + " - j2"

  return names
end

def start_new_game(names)
  game = Game.new(names[0], names[1])
  show = Show.new(game.board)

  while !game.is_Finish

    game.input_listener()
    show.display()
    # game.algo
  end
end

def main
  game_number = 1
  names = get_names
  restart = ""

  start_new_game(names)
  puts "Voulez-vous refaire une partie ? (O/N)"
  restart = gets.chomp

  puts "#{game.winner} a gagné la partie #{game_number} !"
  # while (restart != "O" && restart != "o" && restart != "Oui" && restart != "oui" &&
  #   restart != "N" && restart != "n" && restart != "Non" && restart != "non")
  #   puts "Erreur de saisie.\nVoulez-vous refaire une partie ? (O/N)"
  #   restart = gets.chomp
  # end

  # if restart == "O" && restart == "o" && restart == "Oui" && restart == "oui"
  #   game_number +=1
  #   start_new_game(game_number, names)
  # else
  #   puts "Merci d'avoir !\nFermeture du programme."
  # end
end

main