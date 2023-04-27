# require 'bundler'
# Bundler.require

# $:.unshift File.expand_path("./../lib", __FILE__)
require_relative 'lib/player'

def get_names
  puts "La partie de morpion va commencer, mais avant, veuillez choisir les pseudos des deux joueurs !"
  names = []
  print "Choisissez un pseudo pour le joueur 1\n >> "
  names[0] = gets.chomp + "-j1"
  print "Choisissez un pseudo pour le joueur 2\n >> "
  names[1] = gets.chomp + "-j2"

  return names
end

def main
  names = get_names
  joueur1 = Player.new(names[0], 1)
  joueur2 = Player.new(names[1], 2)

end

main