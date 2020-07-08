=begin
1. Display the initial empy 3x3 board
2. Ask the user to mark a square
3. Computer marks a square
4. Display the updated board state
5. If winner, display winner
6. If board is full, display tie
7. If neither winner nor board is full, go to #2
8. Play again?
9. If yes, go to #1
10. Good bye!

=end

require 'pry'

STARTING_PLAYER = 'choose'
EMPTY_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                [[1, 5, 9], [3, 5, 7]]              # diagonals

def prompt(msg)
  puts "=> #{msg}"
end

def joinor(arr, punctuation = ', ', conjunction = 'or')
  if arr.size > 2
    arr[0..-2].join(punctuation) + punctuation + conjunction + ' ' + arr[-1].to_s
  elsif arr.size == 2
    arr[0].to_s + ' ' + conjunction + ' ' + arr[1].to_s
  else
    arr[0]
  end
end

def display_board(brd)
  system 'clear'
  puts "You are #{PLAYER_MARKER}'s. Computer is #{COMPUTER_MARKER}'s."
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

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = EMPTY_MARKER }
  new_board
end

def empty_squares(brd)
  # binding.pry
  brd.keys.select { |num| brd[num] == EMPTY_MARKER }
end

def players_turn!(brd)
  square = ''
  loop do
    prompt "Choose a square: #{joinor(empty_squares(brd))}"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end
  # binding.pry
  brd[square] = PLAYER_MARKER
end

def computers_turn!(brd)
  square = 0
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(COMPUTER_MARKER) == 2
      3.times { |i| square = line[i] if brd[line[i]] == EMPTY_MARKER }
    elsif brd.values_at(*line).count(PLAYER_MARKER) == 2
      3.times { |i| square = line[i] if brd[line[i]] == EMPTY_MARKER }
    end
  end
  if square.zero?
    brd[5] == EMPTY_MARKER ? square = 5 : square = empty_squares(brd).sample
  end
  brd[square] = COMPUTER_MARKER
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def update_scores(brd, player_score, computer_score)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      player_score += 1
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      computer_score += 1
    end
  end
  [player_score, computer_score]
end

def display_scores(player_score, computer_score)
  case
  when player_score == 5 then puts "You won #{player_score}-#{computer_score}!"
  when computer_score == 5 then puts "The computer won #{player_score}-#{computer_score}!"
  when player_score > computer_score then puts "You are winning #{player_score}-#{computer_score}!"
  when player_score < computer_score then puts "You are losing #{player_score}-#{computer_score}!"
  else puts "It's a tie! #{player_score}-#{computer_score}!"
  end
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def turn!(brd, current_player)
  if current_player == 'player'
    players_turn!(brd)
  else
    computers_turn!(brd)
  end
end

def alternate_player(current_player)
  current_player == 'player' ? 'computer' : 'player'
end


if STARTING_PLAYER == 'choose'
  loop do
    prompt "Who should start? (type 'player' or 'computer')"
    current_player = gets.chomp
    break if current_player == 'player' || current_player == 'computer'
    prompt "That's not a valid choice."
  end
else
  current_player = STARTING_PLAYER
end

player_score = 0
computer_score = 0

loop do
  board = initialize_board
  display_board(board)
  sleep(1)

  loop do
    turn!(board, current_player)
    display_board(board)
    sleep(1)
    break if someone_won?(board) || board_full?(board)
    current_player = alternate_player(current_player)
  end

  if someone_won?(board)
    prompt "#{detect_winner(board)} won!"
  else
    prompt "It's a tie!"
  end

  player_score, computer_score = update_scores(board, player_score, computer_score)
  display_scores(player_score, computer_score)

  break if player_score >= 5 || computer_score >= 5
  prompt "Play again? (y or n)"
  answer = gets.chomp
  break if answer.downcase.start_with?('n')
end

prompt "Thanks for playing Tic Tac Toe! Goodbye!"
