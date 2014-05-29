require 'board'
require 'player'
require 'game_rules'

class Game
  attr_accessor :board, :player, :game_rules

  def initialize
    @board = Board.new(9)
    @player = Player.new('X')
    @game_rules = GameRules.new
  end
  def start
    puts('Welcome to TTT game in Ruby!')
  end
  def ask_human_for_move
    puts "Please enter next move:"
    position = gets
    position.delete!("\n").to_i
  end
  def ask_machine_for_move
    puts "Machine is thinking next move..."
    position = Random.rand(9)
    position
  end
  def make_move(position)
    token = player.get_token
    @player.move(@board, position, token).squares
  end
  def run
    while !@game_rules.winner?(@board)
      board = make_move(ask_human_for_move) 
      show_board
      if @game_rules.winner?(@board) 
        break 
      end
      board = make_move(ask_machine_for_move)
      show_board
    end
  end
  def show_board
    puts
    (0..2).each do |i|
      (0..2).each do |k|
         print "#{@board.squares[k + 3*i - 1]} "
      end
      puts
    end
    puts
  end
end
