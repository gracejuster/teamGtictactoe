require 'pry'
require_relative 'computer.rb'
require_relative 'users.rb'
require_relative 'board.rb'



def welcome
  puts "Welcome to Tic-Tac-Toe!"
end

def identify
  puts "Please enter your name:"
  user = gets
  user = Users.new
  user.name=(user)
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
game_board = game_board.update(player, player_firstMove) #returns board
puts "Your move"
game_board.display_board
#do the following until a win
#computers turn 
puts "Oppenent will go now"
opponent_move = opponent.move(game_board) #will return the square that the computer picks 
game_board = game_board.update(opponent,opponent_move)
game_board.display_board
#players turn 
player_move = player.move(game_board)
game_board = game_board.update(player,player_move)
game_board.display_board
#player move
#update board 


Pry.start