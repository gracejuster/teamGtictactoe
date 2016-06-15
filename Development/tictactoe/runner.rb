require 'pry'
require_relative 'services/Player_login.rb'
require_relative 'models/playerClass.rb'

class Runner

  def run
    puts "im running!"
    all_players = {}
    pl = Player_login.new
    #binding.pry
    login = pl.run
  end
end

game = Runner.new
game.run 
  # new player 
  # new stats 
  # player logs in 
  # store stats 
  # player access stats or player access play 
  # if player access stats 
  #   stats display 
  # if player access play 
  #   player picks side 
  #   new game 
  #   new board 
  #   game played 
  #   winner declared 
  #   stats stored 

#a service = service.new
#result of service = a service.run

