# player_spec.rb
require_relative '../player'

describe Player, '#nextmove' do
  before :each do
    @player = Player.new
  end
  it "returns board with next move for given position" do
    @player.move(2, 'X').should eql '-X-------'
  end
  it "returns board with next move for position 4" do
    @player.move(4, 'O').should eql '---O-----'
  end
end
