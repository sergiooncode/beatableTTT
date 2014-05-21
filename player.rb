# player.rb
class Player 
  def move(position)
    board = '---------'
    board[position - 1] = 'O'
    return board
  end
end
