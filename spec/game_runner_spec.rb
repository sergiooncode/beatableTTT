require 'game_runner'

describe GameRunner do
  context "when new game runner created" do
    it "has a game object" do
      game_runner = GameRunner.new

      expect(game_runner.game).not_to be_nil
    end
  end
  context "when game is ongoing" do
    it "calls ask_for_move through game instance" do
      game_runner = GameRunner.new

      expect(game_runner.game).to receive(:ask_for_move)

      game_runner.game.ask_for_move
    end
    it "calls make_move through game instance" do
      game_runner = GameRunner.new

      expect(game_runner.game).to receive(:make_move)

      game_runner.game.make_move
    end
    it "asks player for move and makes it" do
      game_runner = GameRunner.new

      expect(game_runner).to receive(:ask_player_for_move)

      game_runner.ask_player_for_move
    end
    it "plays game" do
      game_runner = GameRunner.new

      expect(game_runner).to receive(:run)

      game_runner.run
    end
  end
end
