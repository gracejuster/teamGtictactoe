require 'pry'
class Player_login
  attr_reader :all_players
  @@all_players = []
  # def initialize(all_players)
  #   @all_players = all_players
  # end
  #self.all_players 

  #binding.pry
  def run
    #table of contents for player login 
    player_name = enter_name
    @player = Player.new(player_name)
    @player.new?
    binding.pry
  end

   #methods for player login
  def enter_name 
    puts "Enter your name"
    name = gets.chomp
  end

  def new? #true or fale 
    #does all players include self.name? 
    #no --> NEW update all players, keep this palyers stats empty 
    #yes --> OLD give this players stats that old players stats 
    if @@all_players.indlude?(@player.name)
      puts "player exists"
      #self.stats = stats of a certain player 
    else 
      @@all_players << self 
      puts "new_player"
    end
  end


end

