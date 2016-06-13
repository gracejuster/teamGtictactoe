require 'pry'

class Computer
  attr_accessor :side, :compboard

  def move(game_board) #only returnning the square
    self.compboard=(game_board)
    square = rand(1...9) - 1
    unless self.compboard.board[square] == nil
      return square
    else 
      square = rand(1...9) - 1
    end
  end

end 
