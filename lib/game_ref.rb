class GameRef
  def check_on_rows(board)
    squares = board.get_squares
    if !board.is_square_empty(1) && squares[0] == squares[1] && squares[0] == squares[2] 
      # winner = squares[0]
      return true
    end
    if !board.is_square_empty(4) && squares[3] == squares[4] && squares[3] == squares[5]
      # winner = squares[3]
      return true
    end
    if !board.is_square_empty(7) && squares[6] == squares[7] && squares[6] == squares[8]
      # winner = squares[6]
      return true
    end
    false
  end
end
