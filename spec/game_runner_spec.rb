require 'game_runner'

describe GameRunner do
  context "when new game runner created" do
    let(:game_runner){ described_class.new  }
    it "has a game object" do
      expect(game_runner.game).not_to be_nil
    end
  end
  context "when game is ongoing" do
    let(:game_runner){ described_class.new  }
    it "calls ask_for_move through game instance" do
      expect(game_runner.game).to receive(:ask_for_move)

      game_runner.game.ask_for_move
    end
    it "calls make_move through game instance" do
      expect(game_runner.game).to receive(:make_move)

      game_runner.game.make_move
    end
    it "asks human player for move and makes it" do
      expect(game_runner).to receive(:ask_human_player_for_move)

      game_runner.ask_human_player_for_move
    end
    it "asks machine player for move and makes it" do
      expect(game_runner).to receive(:ask_machine_player_for_move)

      game_runner.ask_machine_player_for_move
    end
    it "plays game" do
      expect(game_runner).to receive(:run)

      game_runner.run
    end
  end
end
