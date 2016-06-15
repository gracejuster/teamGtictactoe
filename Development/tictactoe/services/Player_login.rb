require 'pry'
class Player_login

  def run
    #table of contents for player login 
    player_name = enter_name
    @player = Player.new(player_name)
  end

   #methods for player login
  def enter_name 
    puts "Enter your name to login: "
    name = gets.chomp
  end

end



  