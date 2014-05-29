class Player 
  def initialize(token)
    @token = token
  end
  def get_token
    @token
  end
  def move(board, position, token)
    board.squares[position - 1] = token 
    board
  end
end
