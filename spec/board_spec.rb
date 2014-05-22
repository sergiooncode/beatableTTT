# board_spec.rb
require_relative '../board'

describe Board do
  before :each do
    @board = Board.new(9)
  end

  it "gets empty squares" do
    @board.get_squares.should eql '---------'
  end
end
