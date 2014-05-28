class GameRef
  def check_on_rows(board)
    squares = board.squares
    start_row = 0
    while start_row < 7
      if !board.is_square_empty(start_row) && squares[start_row] == squares[start_row + 1] && squares[start_row] == squares[start_row + 2] 
        # winner = squares[0]
        return true
      end
      start_row += 3
    end
    false
  end
end
