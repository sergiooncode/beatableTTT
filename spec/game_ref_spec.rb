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

      board.set_square(1, 'X')
      board.set_square(2, 'X')
      board.set_square(3, 'X')

      expect(game_ref.check_on_rows(board)).to be_true
    end
    it "checks if winner on 2nd row and there is one" do
      board = Board.new(9)
      
      board.set_square(4, 'X')
      board.set_square(5, 'X')
      board.set_square(6, 'X')

      expect(game_ref.check_on_rows(board)).to be_true
    end
    it "checks if winner on 3rd row and there is one" do
      board = Board.new(9)
      
      board.set_square(7, 'X')
      board.set_square(8, 'X')
      board.set_square(9, 'X')
    end
  end
end
