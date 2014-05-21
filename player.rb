# player.rb
class Player 
  def move(position, token)
    board = '---------'
    board[position - 1] = token 
    return board
  end
end
