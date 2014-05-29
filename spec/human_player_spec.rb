require 'human_player'
require 'board'

describe HumanPlayer do
  let(:human_player) { described_class.new('X') }

  it "makes next move" do
    expect(human_player).to receive(:move)

    human_player.move
  end
end
