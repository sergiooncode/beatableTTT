class Board
  attr_accessor :squares

  def initialize(size)
    @squares = String.new	
    size.times do
      @squares << '-'
    end
  end
  def is_square_empty(position)
    @squares[position] == '-'
  end
end
