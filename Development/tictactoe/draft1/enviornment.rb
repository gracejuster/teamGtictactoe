require 'pry'
require_relative 'computer.rb'
require_relative 'users.rb'
require_relative 'board.rb'



def welcome
  puts "Welcome to Tic-Tac-Toe!"
end

def identify
  user = Users.new
  puts "Please enter your name:"
  user_name = gets
  user.name=(user_name)
  return user
end

def choose_team
  puts "Would you like to be x's or o's"
  puts "Enter either 'x' or 'o'"
  team_choice = gets.chomp
end

def sides(user, computer) 
  user.side = choose_team
  if user.side == "x"
    computer.side = "o"
  else 
    computer.side = "x"
  end
end

def rules 
  puts " 1 " "|"  " 2 " "|" " 3 "
  puts "-----------"
  puts " 4 " "|"  " 5 " "|" " 6 "
  puts "-----------"
  puts " 7 " "|"  " 8 " "|" " 9 "
  puts "Enter the number of the square (see above) you'd like to fill:"
  user_move = gets
end



welcome 
player = identify
opponent = Computer.new  
sides(player,opponent)
player_firstMove = rules.chomp
game_board = Board.new
#player first move
game_board = game_board.update(player, player_firstMove) #returns board
game_board.display_board #displays players first move
current_team = player
until game_board.check_win == true
  puts "game not won yet"
  opponent_move = opponent.move(game_board) #will return the square that the computer picks 
  game_board = game_board.update(opponent,opponent_move)
  current_team = opponent
  puts "opponent's move"
  game_board.display_board
  player_move = player.move(game_board)
  game_board = game_board.update(player,player_move)
  current_team = player.name
  puts "player's move"
  game_board.display_board
end
puts current_team.name





#Pry.start