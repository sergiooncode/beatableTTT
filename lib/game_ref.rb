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
  def check_on_columns(board)
    squares = board.squares
    start_column = 0
    while start_column < 3
      if !board.is_square_empty(start_column) && squares[start_column] == squares[start_column + 3] && squares[start_column] == squares[start_column + 6]
        return true
      end
      start_column += 1
    end
    false
  end
  def check_on_diagonals(board)
    squares = board.squares
    start_diagonal = 0
    if !board.is_square_empty(start_diagonal) && squares[start_diagonal] == squares[start_diagonal + 4] && squares[start_diagonal] == squares[start_diagonal + 4]
      return true
    end
    start_diagonal += 6
    if !board.is_square_empty(start_diagonal) && squares[start_diagonal] == squares[start_diagonal - 2] && squares[start_diagonal] == squares[start_diagonal - 4]
      return true
    end
    false
  end
end
