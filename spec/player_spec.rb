# player_spec.rb
require_relative '../player'

describe Player, '#nextmove' do
  it "returns board with next move for given position" do
    player = Player.new
    player.move(2).should eql '-X-------'
  end
end
