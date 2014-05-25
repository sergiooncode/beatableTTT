require 'player'

describe Player do
  before :each do
    @player = Player.new('X')
  end

  it "returns board with next move for position 4" do
    token = @player.get_token
    expect(@player.move(4, token)).to eql('---X-----')
  end
end
