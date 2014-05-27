require 'board'
require 'player'

class Game
  attr_accessor :board, :player

  def initialize(output)
    @output = output
    @board = Board.new(9)
    @player = Player.new('X')
  end
  def start
    @output.puts('Welcome to TTT game in Ruby!')
  end
  def ask_for_move
    move = gets
  end
end
