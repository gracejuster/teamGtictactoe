class Board
  attr_accessor :board

  def initialize 
    @board = [" "," "," "," "," "," "," "," "," "]
  end

  def update(team, square) #team is either player or opponent 
    mark = team.side
    self.board[square.to_i - 1] = "#{mark}"
    return self
  end 

  def display_board
    puts " #{self.board[0]} " "|"  " #{self.board[1]} " "|" " #{self.board[2]} "
    puts "-----------"
    puts " #{self.board[3]} " "|"  " #{self.board[4]} " "|" " #{self.board[5]} "
    puts "-----------"
    puts " #{self.board[6]} " "|"  " #{self.board[7]} " "|" " #{self.board[8]} "
  end

#terminating combos 
self.board[0..2]
self.board[3..5]
self.board[6..8]
#GINA says think about which should not be nill in the full array
#arrays as arrays

end
