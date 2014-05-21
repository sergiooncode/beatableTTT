# player_spec.rb
require_relative '../player'

describe Player, '#nextmove' do
  it "returns board with next move for given position" do
    player = Player.new
    player.move(2, 'X').should eql '-X-------'
  end
  it "returns board with next move for position 4" do
    player = Player.new
    player.move(4, 'O').should eql '---O-----'
  end
end
