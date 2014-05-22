# board.rb
class Board
  def initialize(size)
    @squares = String.new	
    size.times do
      @squares << '-'
    end
  end
  def get_squares
    @squares
  end
end
