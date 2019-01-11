def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index <0 || index >8
    return false
  elsif board[index] == " "
    return true
  else return false
  end
end

def input_to_index(input)
  index = input.to_i
  index = index - 1
  return index
end

def move(board, index, xo)

board[index] = xo
display_board(board)
counter = counter + 1
turn(board)
end
counter = 1
def turn(board)
  xo = "O"

  if counter % 2 == 0
    xo = "O"
  else xo = "X"
  end
  print "Please enter 1-9:"
  input = gets.strip
  index=input_to_index(input)
  if valid_move?(board,index) == true

    puts counter
    move(board,index,xo)
  else turn(board)
end
end
