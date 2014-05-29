class HumanPlayer 
  attr_accessor :token

  def initialize(token)
    @token = token
  end
  def move(board)
    position = gets
    index = position.delete!("\n").to_i
    board.squares[index - 1] = @token 
    board
  end
end
