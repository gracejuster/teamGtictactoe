require 'pry'
require_relative 'services/Player_login.rb'
require_relative 'services/Returning_player.rb'
require_relative 'models/playerClass.rb'
require_relative 'runner.rb'
#check that returning player has access 

game = Runner.new
game.run 
