class Player
  attr_accessor :name, :side 
  attr_reader :stats
  def initialize(name)
    @name = name 
    @stats = []
    @side = " "
  end
end