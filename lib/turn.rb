def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, input)
  input_to_index(input)
  if index <0 || index >8
    return false
  elsif board[index] == " "
    return true
  else return false
  end
end

def input_to_index(input)
  index = input.to_i
  index = index -1
  return index
end

def move(board, input, xo="X")
input_to_index(input)
board[index] = xo
display_board(board)
turn(board)
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  if valid_move?(board,input) == true
    move(board,input)
  else turn(board)
end
end
