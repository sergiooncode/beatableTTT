require 'game_ref'

describe GameRef do
  it "checks if winner on rows and there is none" do
    board = Board.new(9)
    game_ref = GameRef.new

    expect(game_ref.check_on_rows(board)).not_to be_true
  end
end
