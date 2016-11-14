require 'pry'

INITIAL_MARKER = ' '.freeze
PLAYER_MARKER = 'X'.freeze
COMPUTER_MARKER = 'O'.freeze
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[2, 5, 8], [1, 4, 7], [3, 6, 9]] + # cols
                [[1, 5, 9], [3, 5, 7]] # diagonals
WHO_GOES_FIRST = 'choose'.freeze # player, computer, choose

def prompt(msg)
  puts "=> #{msg}"
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  system 'clear'
  prompt "You're a #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}."
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def clear_score
  player_points = 0
  computer_points = 0
  game_over = false
  [player_points, computer_points, game_over]
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def joinor(available_squares, delimiter = ',', conjunction = 'or')
  open_squares = ''
  available_squares.each_with_index do |open_square, index|
    if available_squares.size > 2 && index == available_squares.size - 1
      open_squares += "#{conjunction} #{open_square}"
      return open_squares
    elsif available_squares.size > 2
      open_squares += "#{open_square}#{delimiter} "
    else
      open_squares += open_square.to_s
    end
  end
  open_squares
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd), ',')}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end
  brd[square] = PLAYER_MARKER
end

def next_move(sequence, brd)
  sequence.each do |num|
    return num if brd[num] == INITIAL_MARKER
  end
  nil
end

def computer_move(brd, marker)
  move_here = []
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(marker) == 2
      move_here << next_move(line, brd) if next_move(line, brd).nil? == false
    end
  end
  move_here[0]
end

def computer_places_piece!(brd)
  square = if !!computer_move(brd, COMPUTER_MARKER)
             computer_move(brd, COMPUTER_MARKER)
           elsif !!computer_move(brd, PLAYER_MARKER)
             computer_move(brd, PLAYER_MARKER)
           elsif brd[5] == INITIAL_MARKER
             5
           else
             empty_squares(brd).sample
           end
  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def scoreboard(winner, player_total, computer_total)
  if winner == 'Player'
    player_total += 1
  else
    computer_total += 1
  end
  [player_total, computer_total]
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count('X') == 3
      return 'Player'
    elsif brd.values_at(*line).count('O') == 3
      return 'Computer'
    end
  end
  nil
end

def announcement(who_won, player_total, computer_total, winning)
  if who_won
    prompt "#{winning} won! Player:#{player_total}. Computer:#{computer_total}"
  else
    prompt "It's a tie!"
  end
end

def alternate_player(player)
  if player == 'player'
    return 'computer'
  end
  'player'
end

def place_piece!(brd, player)
  if player == 'player'
    player_places_piece!(brd)
  else
    computer_places_piece!(brd)
  end
end

p_score, c_score, game_over = clear_score
current_player = WHO_GOES_FIRST

loop do
  board = initialize_board
  if WHO_GOES_FIRST == 'choose'
    prompt "Who goes first - player or computer?"
    current_player = gets.chomp.downcase
  end
  loop do
    display_board(board)
    place_piece!(board, current_player)
    current_player = alternate_player(current_player)
    break if someone_won?(board) || board_full?(board)
  end
  display_board(board)
  p_score, c_score = scoreboard(detect_winner(board), p_score, c_score)
  announcement(someone_won?(board), p_score, c_score, detect_winner(board))
  if p_score == 5 || c_score == 5
    prompt "Game Over"
    prompt "Do you want to play Tic Tac Toe again?"
    response = gets.chomp
    p_score, c_score, game_over = clear_score
    break unless response.downcase.start_with?('y')
  else
    prompt "Do you want to play another round?"
    answer = gets.chomp
    break unless answer.downcase.start_with?('y')
  end
end

prompt "Thanks for playing Tic Tac Toe! Goodbye."
