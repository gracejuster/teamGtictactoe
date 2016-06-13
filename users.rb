class Users 
  attr_accessor :name, :side

  def move(game_board)
    puts "Your turn. Pick another number:"
    square = gets.chomp
  end
end 
