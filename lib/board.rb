class Board
  attr_accessor :squares

  def initialize(size)
    @squares = String.new	
    size.times do
      @squares << '-'
    end
  end
  def empty?(position)
    @squares[position] == '-'
  end
end
