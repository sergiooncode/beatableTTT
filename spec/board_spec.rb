require 'board'

describe Board do
  before :each do
    @board = Board.new(9)
  end

  it "gets empty squares" do
    @board.get_squares.should eql '---------'
  end
  it "sets 2nd square to X" do
    @board.set_square(2, 'X')
    @board.get_squares.should eql '-X-------'
  end
  it "checks if an square is empty and it is" do 
    @board.is_square_empty(3).should be_true 
  end
  it "checks if an square is empty and it is not" do
    @board.set_square(2, 'O')
    @board.is_square_empty(2).should be_true
  end
end
