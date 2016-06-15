require 'pry'

class Returning_player 
  attr_reader :player
  def initialize(player)
    @player = player
  end

  def run 
    check
  end 

  def check 
    #@player.name = "grace"
    #self.player.name ="grace"
    #if the list of all players includes a player with the same name 
    #set this players stats to that same player 
    #if not stats remain empty 
    Player.all.collect do |user| #always going to include the name you just added 
      binding.pry
    end
      #iterate to get into the names 
  end


end

