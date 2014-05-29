require 'game_rules'

describe GameRules do
  context "when checking rows for winner" do
    let(:game_rules){ described_class.new }
    before :each do
      @board = Board.new(9)
    end
    it "checks if winner on rows and there is none" do
      expect(game_rules.check_on_rows(@board)).to eql nil
    end
    it "checks if winner on 1st row and there is one" do
      @board.squares[0] = 'X'
      @board.squares[1] = 'X'
      @board.squares[2] = 'X'

      expect(game_rules.check_on_rows(@board)).to eql 'X'
    end
    it "checks if winner on 2nd row and there is one" do
      @board.squares[3] = 'X'
      @board.squares[4] = 'X'
      @board.squares[5] = 'X'

      expect(game_rules.check_on_rows(@board)).to eql 'X'
    end
    it "checks if winner on 3rd row and there is one" do
      @board.squares[6] = 'X'
      @board.squares[7] = 'X'
      @board.squares[8] = 'X'

      expect(game_rules.check_on_rows(@board)).to eql 'X'
    end
  end
  context "when checking columns for winner" do
    let(:game_rules){ described_class.new }
    before :each do
      @board = Board.new(9)
    end
    it "checks if winner on 1st column and there is one" do
      @board.squares[0] = 'O'
      @board.squares[3] = 'O'
      @board.squares[6] = 'O'

      expect(game_rules.check_on_columns(@board)).to eql 'O'
    end
    it "checks if winner on 2nd column and there is one" do
      @board.squares[1] = 'O'
      @board.squares[4] = 'O'
      @board.squares[7] = 'O'

      expect(game_rules.check_on_columns(@board)).to eql 'O'
    end
    it "checks if winner on 3rd column and there is one" do
      @board.squares[2] = 'O'
      @board.squares[5] = 'O'
      @board.squares[8] = 'O'

      expect(game_rules.check_on_columns(@board)).to eql 'O'
    end
  end
  context "when checking diagonals for winner" do
    let(:game_rules){ described_class.new }
    before :each do
      @board = Board.new(9)
    end
    it "checks if winner on N-S diagonal" do
      @board.squares[0] = 'X'
      @board.squares[4] = 'X'
      @board.squares[8] = 'X'

      expect(game_rules.check_on_diagonals(@board)).to eql 'X'
    end
    it "checks if winner on S-N diagonal" do
      @board.squares[2] = 'X'
      @board.squares[4] = 'X'
      @board.squares[6] = 'X'

      expect(game_rules.check_on_diagonals(@board)).to eql 'X'
    end
  end
  context "when checking if there is winner" do
    let(:game_rules){ described_class.new}
    before :each do
      @board = Board.new(9)
    end
    it "checks if there is winner and it doesn't" do
      expect(game_rules.winner?(@board)).to be_false
    end
    it "checks if there is winner and it does" do
      @board.squares[0] = 'X'
      @board.squares[1] = 'O'
      @board.squares[2] = 'X'
      @board.squares[3] = 'X'
      @board.squares[4] = 'O'
      @board.squares[5] = '-'
      @board.squares[6] = '-'
      @board.squares[7] = 'O'
      @board.squares[8] = '-'

      expect(game_rules.winner?(@board)).to be_true
    end
  end
end