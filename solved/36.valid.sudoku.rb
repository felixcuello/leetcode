# @param {Character[][]} board
# @return {Boolean}
require 'set'

def is_valid_sudoku(board)
  rows = board.count
  cols = board[0].count
  
  # Check if rows are valid
  rows.times do |row|
    valid_cols = Set.new
    cols.times do |col|
      n = board[row][col]
      next if n == '.'
      return false if valid_cols.member?(n)
      valid_cols.add(n)
    end
  end
  
  # Check if cols are valid
  cols.times do |col|
    valid_rows = Set.new
    rows.times do |row|
      n = board[row][col]
      next if n == '.'
      return false if valid_rows.member?(n)
      valid_rows.add(n)
    end
  end
  
  # Check if squares are valid
  3.times do |row|
    3.times do |col|
      valid_square = Set.new
      9.times do |x|
        n = board[(row * 3)  + (x / 3)][(col * 3) + (x % 3)]
        next if n == '.'
        if valid_square.member?(n)
          puts valid_square.inspect
          return false
        end
        valid_square.add(n)
      end
    end
  end
  
  true
end
