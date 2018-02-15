def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(index)
  index = index.to_i
  index = index - 1
end

def valid_move?(board, index)
  if board[index] == "" || board[index] == " " || board[index] == nil
    if index >= 0 && index < 9
      return true
    else
      return false 
    end
  else
    return false
  end
end

def move(board, index, character = "X")
  if valid_move?(board, index)
    board[index] = character
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  player_turn = input_to_index(input)
  if valid_move(board, player_turn)
    move(board, player_turn, character)
  else
    turn(board)
  end
end