require 'game'

class GameRunner
  attr_accessor :game

  def initialize
    @game = Game.new
  end
  def ask_player_for_move
    position = @game.ask_for_move
    @game.make_move(position)
  end
  def run
    board = ask_player_for_move
    puts board
  end
end
