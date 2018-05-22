def input_to_index(input)
  index = input.to_i - 1
end
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, index)
  if board[index] == "" || board[index] == " " || board[index] == nil
    return FALSE
  else
    return TRUE
  end
end

def valid_move?(board, index)
  if index >= 0 && index <= 8
    if position_taken?(board, index) == FALSE
      return TRUE
    end
  else
    return FALSE
  end
end

def move(board, index, mark = "X")
  if valid_move?(board, index) == TRUE
    board[index] = mark
  end
end


    