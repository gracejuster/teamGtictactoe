class Player
  attr_accessor :name, :side 
  attr_reader :stats
  @@all_players = []
  def initialize(name, stats, side)
    @name = name 
    @stats = stats
    @side = side 
    @@all_players << self
  end
end