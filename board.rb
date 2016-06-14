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


  def check_win
    #returns true or false 

     winning_combos = [
    [0, 1, 2], #
    [3, 4, 5],#
    [6, 7, 8],#
    [0, 3, 6],#
    [1, 4, 7],
    [2, 5, 8],
    [0, 4, 8],
    [2, 4, 6]
  ] 
    marked_array = []
    self.board.each_with_index do |mark, mark_index|
      if mark != " "
        marked_array << mark_index
      end
      marked_array
    end
    
    possible_wins = [] #[3,4,5], 048 246 147
    marked_array.each do |marked|
      #for each marked spot
      winning_combos.each do |combo|
        if combo.include?(marked)
          possible_wins << combo
        end
      end
    end

    possible_wins.each do |pos|
       if pos.all?{|num| marked_array.include?(num)}
        return true
        end
    end
end

end


