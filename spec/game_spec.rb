require 'game'

describe Game do
  context "when new game created" do
    it "sends a welcome message" do
      game = Game.new

      expect(game).to receive(:puts).with('Welcome to TTT game in Ruby!') 
    
      game.start
    end
    it "has a board" do
      game = Game.new

      expect(game.board).not_to be_nil
    end
    it "has a player" do
      game = Game.new

      expect(game.player).not_to be_nil
    end
  end
  context "while playing" do
    it "asks human player for move one time" do
      game = Game.new

      expect(game).to receive(:ask_human_for_move)

      game.ask_human_for_move
    end
    it "asks machine player for move one time" do
      game = Game.new

      expect(game).to receive(:ask_machine_for_move)

      game.ask_machine_for_move
    end
    it "makes next move calling move method on player instance with position 5" do
      game = Game.new

      expect(game.make_move(5)).to eql('----X----')
    end
  end
end
