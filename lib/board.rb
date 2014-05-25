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
  def set_square(position, token)
    @squares[position - 1] = token
  end
  def is_square_empty(position)
    @squares[position - 1] == '-'
  end
end
