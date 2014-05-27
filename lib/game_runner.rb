class GameRunner
  attr_accessor :game

  def initialize
    @game = Game.new(nil)
  end
end
