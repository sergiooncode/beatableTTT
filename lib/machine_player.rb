class MachinePlayer 
  attr_accessor :token

  def initialize(token)
    @token = token
  end
  def move(board)
    index = Random.rand(9)
    while board.squares[index] != '-'
      index = Random.rand(9)
    end
    board.squares[index] = @token 
    board
  end
end
