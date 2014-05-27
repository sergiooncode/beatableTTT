require 'game_runner'

describe GameRunner do
  context "when new game runner created" do
    it "has a game object" do
      game_runner = GameRunner.new

      expect(game_runner.game).not_to be_nil
    end
  end

end
