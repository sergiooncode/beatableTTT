require 'board'
require 'player'

class Game
  attr_accessor :board, :player

  def initialize
    @board = Board.new(9)
    @player = Player.new('X')
  end
  def start
    puts('Welcome to TTT game in Ruby!')
  end
  def ask_human_for_move
    position = gets
    position.delete!("\n").to_i
  end
  def ask_machine_for_move
    position = Random.rand(9)
  end
  def make_move(position)
    token = player.get_token
    @player.move(position, token)
  end
end
