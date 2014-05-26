require 'game'

describe Game do
  it "sends a welcome message" do
    output = double('output')
    game = Game.new(output)

    expect(output).to receive(:puts).with('Welcome to TTT game in Ruby!') 
    
    game.start
  end
end
