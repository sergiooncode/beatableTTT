require 'board'
require 'human_player'
require 'game_rules'
require 'machine_player'

class Game
  attr_accessor :board, :human_player, :machine_player, :game_rules

  def initialize
    @board = Board.new(9)
    @human_player = HumanPlayer.new('X')
    @machine_player = MachinePlayer.new('O')
    @game_rules = GameRules.new
  end
  def start
    puts "Welcome to TTT game in Ruby!"
    puts "Human plays with X"
    puts "Machine plays with O"
    puts
  end
  def ask_human_for_move
    puts "Please human enter next move:"
    @human_player.move(@board)
  end
  def ask_machine_for_move
    puts "Machine is thinking next move..."
    @machine_player.move(@board)
  end
  def make_move(position)
    token = player.get_token
    @player.move(@board, position, token).squares
  end
  def run
    while !@game_rules.winner?(@board) && !@game_rules.tie?(@board)
      @board = ask_human_for_move
      show_board
      if @game_rules.winner?(@board) || @game_rules.tie?(@board)
        break 
      end
      @board = ask_machine_for_move
      show_board
    end
    show_board
  end
  def finish
    if @game_rules.winner?(@board)
      puts "Player #{@game_rules.who_is_winner} won."
    else
      puts "It was a tie."
    end
  end
  def show_board
    puts
    (0..2).each do |i|
      (0..2).each do |k|
        print "#{@board.squares[k + 3*i]} "
      end
      puts
    end
    puts
  end
end
