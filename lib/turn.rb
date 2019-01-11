def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  index = input.to_i
  index = index -1
  if index <0 || index >8
    return false
  elsif board[index] == " "
    return true
  else return false
  end
end

def move(board, index, xo="X")
  
board[index] = xo
end

def turn(board)
  puts "Please enter 1-9"
  input = gets.strip
  if 
end
