# board_spec.rb
require_relative '../board'

describe Board do
  before :each do
    @board = Board.new
  end
  it "returns board with empty squares" do
    @board.init.should eql '---------'
  end
end
