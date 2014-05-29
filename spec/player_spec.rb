require 'player'
require 'board'

describe Player do
  let(:player) { described_class.new('X') }

  it "returns current board with next move in position 4" do
    token = player.get_token
    board = Board.new(9)
    board.squares[0] = 'O'
    board.squares[1] = 'X'

    expect(player.move(board, 4, token).squares).to eql('OX-X-----')
  end
end
