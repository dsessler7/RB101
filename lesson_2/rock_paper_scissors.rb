VALID_CHOICES = %w(rock paper scissors lizard spock r p sc l sp)

def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  winning_combos = {
    'rock' => %w(scissors lizard),
    'paper' => %w(rock spock),
    'scissors' => %w(paper lizard),
    'spock' => %w(scissors rock),
    'lizard' => %w(spock paper)
  }

  winning_combos[first].include?(second)
end

def display_results(player, computer)
  if win?(player, computer)
    prompt 'You won!'
  elsif win?(computer, player)
    prompt 'You lost!'
  else
    prompt "It's a tie"
  end
end

player_score = 0
computer_score = 0

loop do
  choice = ''
  loop do
    prompt 'Choose one: rock, paper, scissors, lizard, spock'
    prompt 'Or r for rock, p for paper, sc for scissors, l for lizard, sp for spock'
    choice = gets.chomp

    VALID_CHOICES.include?(choice) ? break : (prompt "That's not a valid choice.")
  end
  choice = VALID_CHOICES[VALID_CHOICES.index(choice) - 5] if choice.length < 3
  computer_choice = VALID_CHOICES[0, 5].sample

  prompt "You chose #{choice}; the computer chose #{computer_choice}."
  
  player_score += 1 if win?(choice, computer_choice)
  computer_score += 1 if win?(computer_choice, choice)
  display_results(choice, computer_choice)
  
  if player_score > 4
    prompt "You won the match #{player_score} - #{computer_score}!"
    break
  elsif computer_score > 4
    prompt "You lost the match #{player_score} - #{computer_score}!"
    break
  elsif player_score > computer_score
    prompt "You are winning the match #{player_score} - #{computer_score}!"
  elsif computer_score > player_score
    prompt "You are losing the match #{player_score} - #{computer_score}!"
  else
    prompt "The match is tied #{player_score} - #{computer_score}!"
  end

  prompt 'Do you want to keep playing?'
  play_again = gets.chomp
  break unless play_again.downcase.start_with?('y')
end

prompt 'Thank you for playing. Goodbye!'
