require 'pry'

# rubocop:disable LineLength
CARD_POINTS = { 2 => 2, 3 => 3, 4 => 4, 5 => 5, 6 => 6, 7 => 7, 8 => 8, 9 => 9, 10 => 10, 0 => 10, 'ace' => [1, 11] }.freeze
# rubocop:enable LineLength
MAX_POINTS = 21
DEALER_MIN = 17

def prompt(msg)
  puts "=> #{msg}"
end

def deal(all_cards, hand)
  2.times do
    card = all_cards.sample
    hand << card
    all_cards.delete_at(all_cards.index(card))
  end
end

def organize_cards(hand)
  hand.each_with_index do |card, index|
    if card.include?('Ace')
      hand.delete_at(index)
      hand << card
    end
  end
end

def hit(all_cards, hand)
  card = all_cards.sample
  hand << card
  all_cards.delete_at(all_cards.index(card))
  organize_cards(hand)
end

def score_ace(total, points)
  if total + 11 > MAX_POINTS
    total += points['ace'][0]
  elsif total + 11 <= MAX_POINTS
    total += points['ace'][1]
  end
  total
end

def score(points, hand)
  total = 0
  hand.each do |card|
    if card.include?('Ace')
      total = score_ace(total, points)
      next
    end
    total += points[card.to_i]
  end
  total
end

def bust?(points, hand)
  score(points, hand) > MAX_POINTS
end

def player_turn(cards, points, hand)
  loop do
    prompt 'Do you want to hit or stay?'
    ans = gets.chomp
    case ans
    when 'hit'
      hit(cards, hand)
      prompt "Your new hand is #{hand.join(', ')}."
    when 'stay'
      break
    else
      prompt 'Sorry, that is not a valid choice.'
    end
    break if score(points, hand) == MAX_POINTS || bust?(points, hand)
  end
end

def dealer_turn(cards, points, hand, p_cards, who_scored)
  puts "\nDealer is taking a turn."
  loop do
    break if score(points, hand) >= DEALER_MIN
    hit(cards, hand)
  end
  who_won_end(points, hand, p_cards, who_scored)
end

def player_win_or_bust(points, d_cards, p_cards, who_scored)
  p_total = score(points, p_cards)
  d_total = score(points, d_cards)
  if p_total == MAX_POINTS
    announce_winner('Player', 'Dealer', p_total, d_total)
    who_scored << 'Player'
  elsif bust?(points, p_cards)
    announce_winner('Dealer', 'Player', d_total, p_total)
    who_scored << 'Dealer'
  end
end

def who_won_end(points, d_cards, p_cards, who_scored)
  p_total = score(points, p_cards)
  d_total = score(points, d_cards)
  p_wins_end = p_total > d_total || bust?(points, d_cards)
  d_wins_end = d_total > p_total || d_total == MAX_POINTS
  tied = d_total == p_total
  if p_wins_end
    announce_winner('Player', 'Dealer', p_total, d_total)
    who_scored << 'Player'
  elsif d_wins_end
    announce_winner('Dealer', 'Player', d_total, p_total)
    who_scored << 'Dealer'
  elsif tied
    announce_winner('Dealer', 'Player', d_total, p_total)
  end
end

def announce_winner(winner, loser, winner_points, loser_points)
  puts ' '
  if loser_points > MAX_POINTS
    prompt "#{loser}'s hand equals #{loser_points}."
    prompt "Game over. #{winner} wins."
  elsif winner_points == MAX_POINTS
    prompt "#{winner}'s hand equals #{MAX_POINTS}. Game over."
  else
    prompt "#{winner}'s hand equals #{winner_points}."
    prompt "#{loser}'s hand equals #{loser_points}."
    if winner_points == loser_points
      prompt 'Its a tie.'
    else
      prompt "Game Over. #{winner} wins."
    end
  end
end

def best_of_five(player_wins, dealer_wins, who_scored)
  if who_scored[0] == 'Player'
    player_wins += 1
  elsif who_scored[0] == 'Dealer'
    dealer_wins += 1
  end
  [player_wins, dealer_wins]
end

# the procedure
prompt "Welcome to Twenty One."
prompt "Get as close to #{MAX_POINTS} without going over."
prompt "Numbered cards are worth their face value."
prompt "Jack, Queen, and King equal 10."
prompt "Ace can equal either 1 or 11."

loop do
  total_d_wins = 0
  total_p_wins = 0
  loop do
    plus1 = []
    puts "\nShuffling..."
    puts "Dealing...\n\n"
    # rubocop:disable LineLength
    deck = ['2 of Diamonds', '2 of Hearts', '2 of Spades', '2 of Clubs', '3 of Diamonds', '3 of Hearts', '3 of Spades', '3 of Clubs', '4 of Diamonds', '4 of Hearts', '4 of Spades', '4 of Clubs', '5 of Diamonds', '5 of Hearts', '5 of Spades', '5 of Clubs', '6 of Diamonds', '6 of Hearts', '6 of Spades', '6 of Clubs', '7 of Diamonds', '7 of Hearts', '7 of Spades', '7 of Clubs', '8 of Diamonds', '8 of Hearts', '8 of Spades', '8 of Clubs', '9 of Diamonds', '9 of Hearts', '9 of Spades', '9 of Clubs', '10 of Diamonds', '10 of Hearts', '10 of Spades', '10 of Clubs', 'Jack of Diamonds', 'Jack of Hearts', 'Jack of Spades', 'Jack of Clubs', 'Queen of Diamonds', 'Queen of Hearts', 'Queen of Spades', 'Queen of Clubs', 'King of Diamonds', 'King of Hearts', 'King of Spades', 'King of Clubs', 'Ace of Diamonds', 'Ace of Hearts', 'Ace of Spades', 'Ace of Clubs']
    # rubocop:enable LineLength
    player_cards = []
    dealer_cards = []
    deal(deck, player_cards)
    deal(deck, dealer_cards)
    prompt "Your cards are #{player_cards[0]} and #{player_cards[1]}."
    prompt "The dealer's cards are #{dealer_cards[0]} and (?)."
    player_turn(deck, CARD_POINTS, player_cards)
    player_win_or_bust(CARD_POINTS, dealer_cards, player_cards, plus1)
    if score(CARD_POINTS, player_cards) < MAX_POINTS
      dealer_turn(deck, CARD_POINTS, dealer_cards, player_cards, plus1)
    end
    total_p_wins, total_d_wins = best_of_five(total_p_wins, total_d_wins, plus1)
    puts ' '
    prompt "Player: #{total_p_wins}"
    prompt "Dealer: #{total_d_wins}"
    if total_p_wins < 5 && total_d_wins < 5
      prompt 'Would you like to play another round?'
      answer = gets.chomp.downcase
      break if answer == 'no'
    else
      break
    end
  end
  if total_p_wins == 5 || total_d_wins == 5
    prompt 'Would you like to play another best of five?'
    answer = gets.chomp.downcase
    break if answer == 'no'
  else
    break
  end
end

prompt 'Thank you for playing Twenty One! Goodbye.'
