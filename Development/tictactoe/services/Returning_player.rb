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

    login_names = Player.all.collect do |user| 
      user.name
    end

   
    login_names_no_dups = login_names.uniq
    if login_names_no_dups.length != login_names.length #player is returning 
      #if the player returns make this new instance reference the old 
      #first find the reference in the list of payers 
      login_names.each do |user|
        if user == self.player.name 
          puts "hey" 
        end
      end
    end
  end


end

