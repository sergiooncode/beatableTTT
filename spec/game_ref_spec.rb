require 'game_ref'

describe GameRef do
  context "when checking rows for winner" do
    let(:game_ref){ described_class.new }
    it "checks if winner on rows and there is none" do
      board = Board.new(9)

      expect(game_ref.check_on_rows(board)).to be_false
    end
    it "checks if winner on 1st row and there is one" do
      board = Board.new(9)

      board.squares[0] = 'X'
      board.squares[1] = 'X'
      board.squares[2] = 'X'

      expect(game_ref.check_on_rows(board)).to be_true
    end
    it "checks if winner on 2nd row and there is one" do
      board = Board.new(9)
      
      board.squares[3] = 'X'
      board.squares[4] = 'X'
      board.squares[5] = 'X'

      expect(game_ref.check_on_rows(board)).to be_true
    end
    it "checks if winner on 3rd row and there is one" do
      board = Board.new(9)
      
      board.squares[6] = 'X'
      board.squares[7] = 'X'
      board.squares[8] = 'X'

      expect(game_ref.check_on_rows(board)).to be_true
    end
  end
end
