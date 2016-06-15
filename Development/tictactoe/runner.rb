

class Runner

  def run
    pl = Player_login.new
    player = pl.run
    ## <Player_login:0x007fa0422582f0 @player=#<Player:0x007fa0422581d8 @name="grce", @side=" ", @stats=[]>>
    Returning_player.new(player).run

  end

end




###NOTES 

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

