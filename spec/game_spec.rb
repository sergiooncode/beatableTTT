require 'game'

describe Game do
  context "when new game created" do
    it "sends a welcome message" do
      output = double('output')
      game = Game.new(output)

      expect(output).to receive(:puts).with('Welcome to TTT game in Ruby!') 
    
      game.start
    end
    it "has a board" do
      output = double('output')
      game = Game.new(output)

      expect(game.board).not_to be_nil

    end
    it "has a player" do
      output = double('output')
      game = Game.new(output)

      expect(game.player).not_to be_nil
    end
  end
  context "while playing" do
    it "asks a player for next move one time" do
      output = double('output')
      game = Game.new('output')

      expect(game).to receive(:gets)

      game.ask_for_move
    end
    it "makes next move calling move method on player instance" do
      output = double('output')
      game = Game.new(output)

      expect(game).to receive(:make_move)

      game.make_move
    end
  end
end
