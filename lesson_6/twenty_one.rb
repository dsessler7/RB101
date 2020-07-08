=begin
1. Initialize deck
2. Deal cards to player and dealer
3. Player turn: hit or stay
  - repeat until bust or "stay"
4. If player bust, dealer wins.
5. Dealer turn: hit or stay
  - repeat until total >= 17
6. If dealer bust, player wins.
7. Compare cards and declare winner.
=end

WHATEVER_ONE = 21
DEALER_MIN = 17

def prompt(msg)
  puts "=> #{msg}"
end

def initialize_deck
  deck = []
  4.times do
    2.upto(10) { |n| deck << n }
    deck << 'J' << 'Q' << 'K' << 'A'
  end
  deck
end

def deal_card!(deck, hand)
  hand << deck.pop
end

def show_dealer_cards(hand, total=0, show_first_card=false)
  hand_string = hand.join(' ')
  if show_first_card == false
    temp_arr = hand_string.split
    temp_arr[0] = '?'
    hand_string = temp_arr.join(' ')
  end
  output_string = "The dealer has #{hand_string}"
  output_string += " for a total of #{total}" if total > 0
  prompt output_string
end

def show_player_cards(hand, total)
  hand_string = hand.join(' ')
  prompt "You have #{hand_string} for a total of #{total}"
end

def determine_hand_value(hand)
  temp_hand = hand.partition { |card| card != 'A' }
  total = temp_hand[0].inject(0) do |memo, card|
    card.class == String ? memo += 10 : memo += card
  end
  total += temp_hand[1].size
  temp_hand[1].size.times { total += 10 if total <= WHATEVER_ONE - 10 }
  total
end

def busted?(total)
  total > WHATEVER_ONE
end

def play_again?
  answer = ''
  loop do
    prompt "Would you like to keep playing? (Type 'yes' or 'no')"
    answer = gets.chomp
    break if answer == 'yes' || answer == 'no'
    prompt "That is not a valid answer."
  end
  answer == 'yes'
end

player_wins = 0
dealer_wins = 0

loop do
  # Initialize and shuffle deck
  deck = initialize_deck
  deck.shuffle!

  # Initialize hands and deal first cards
  player_hand = []
  dealer_hand = []
  deal_card!(deck, player_hand)
  deal_card!(deck, dealer_hand)
  deal_card!(deck, player_hand)
  deal_card!(deck, dealer_hand)
  player_total = determine_hand_value(player_hand)
  dealer_total = determine_hand_value(dealer_hand)

  # Player turn
  loop do
    # Show current cards
    system 'clear'
    show_dealer_cards(dealer_hand)
    show_player_cards(player_hand, player_total)
    sleep(1)

    answer = ''
    loop do
      prompt "Would you like to hit or stay? (Type 'hit' or 'stay')"
      answer = gets.chomp
      break if answer == 'hit' || answer == 'stay'
      prompt "That is not a valid answer."
    end

    deal_card!(deck, player_hand) if answer == 'hit'
    player_total = determine_hand_value(player_hand)
    break if answer == 'stay' || busted?(player_total)
  end

  # Show current cards
  system 'clear'
  show_dealer_cards(dealer_hand, dealer_total, true)
  show_player_cards(player_hand, player_total)
  sleep(1)

  unless busted?(player_total)
    loop do
      # Dealer's turn
      break if determine_hand_value(dealer_hand) >= DEALER_MIN
      deal_card!(deck, dealer_hand)
      dealer_total = determine_hand_value(dealer_hand)
      system 'clear'
      show_dealer_cards(dealer_hand, dealer_total, true)
      show_player_cards(player_hand, player_total)
      sleep(1)
    end
  end

  # Determine hand winner
  if busted?(player_total)
    dealer_wins += 1
    prompt "You busted and lost!"
  elsif busted?(dealer_total)
    player_wins += 1
    prompt "The dealer busted. You won!"
  elsif player_total > dealer_total
    player_wins += 1
    prompt "You won!"
  elsif player_total < dealer_total
    dealer_wins += 1
    prompt "You lost!"
  else
    prompt "It's a tie!"
  end

  # Check game score
  if player_wins >= 5
    prompt "You won #{player_wins}-#{dealer_wins}!"
    break
  elsif dealer_wins >= 5
    prompt "You lost #{player_wins}-#{dealer_wins}!"
    break
  elsif player_wins > dealer_wins
    prompt "You are winning #{player_wins}-#{dealer_wins}!"
  elsif player_wins < dealer_wins
    prompt "You are losing #{player_wins}-#{dealer_wins}!"
  else
    prompt "The score is tied #{player_wins}-#{dealer_wins}!"
  end

  break unless play_again?
end
prompt "Thanks for playing TwentyOne! Goodbye!"
