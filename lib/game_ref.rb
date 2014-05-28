class GameRef
  def check_on_rows(board)
    squares = board.squares
    start_row = 0
    winner = nil
    while start_row < 7
      if !board.is_square_empty(start_row) && squares[start_row] == squares[start_row + 1] && squares[start_row] == squares[start_row + 2] 
        winner = squares[start_row]
      end
      start_row += 3
    end
    winner
  end
  def check_on_columns(board)
    squares = board.squares
    start_column = 0
    while start_column < 3
      if !board.is_square_empty(start_column) && squares[start_column] == squares[start_column + 3] && squares[start_column] == squares[start_column + 6]
        winner = squares[start_column]
      end
      start_column += 1
    end
    winner
  end
  def check_on_diagonals(board)
    squares = board.squares
    start_diagonal = 0
    if !board.is_square_empty(start_diagonal) && squares[start_diagonal] == squares[start_diagonal + 4] && squares[start_diagonal] == squares[start_diagonal + 4]
      winner = squares[start_diagonal]
    end
    start_diagonal += 6
    if !board.is_square_empty(start_diagonal) && squares[start_diagonal] == squares[start_diagonal - 2] && squares[start_diagonal] == squares[start_diagonal - 4]
      winner = squares[start_diagonal]
    end
    winner
  end
  def winner?(board)
    if check_on_rows(board) != nil
     return true
    end
    if check_on_columns(board) != nil 
     return true
    end
    if check_on_diagonals(board) != nil
      return true
    end
    false
  end
end
