require 'game'

class GameRunner
  attr_accessor :game

  def initialize
    @game = Game.new
  end
  def ask_human_player_for_move
    position = @game.ask_human_for_move
    @game.make_move(position)
  end
  def ask_machine_player_for_move
    position = @game.ask_machine_for_move
    @game.make_move(position)
  end
  def run
    board = ask_human_player_for_move
    puts board
    board = ask_machine_player_for_move
    puts board
  end
end
