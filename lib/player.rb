class Player 
  def initialize(token)
    @token = token
  end
  def get_token
    @token
  end
  def move(position, token)
    board = '---------'
    board[position - 1] = token 
    return board
  end
end
