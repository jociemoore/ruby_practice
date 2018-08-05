VALID_CHOICES = %w(rock paper scissors lizard spock)
SHORTHAND = %w(r p sc l sp)
WINNING_SCENARIOS = ['r sc', 'r l', 'p r', 'p sp', 'sc l', 'sc p', 'l p', 'l sp', 'sp r', 'sp sc']

your_score = []
computer_score = []

def prompt(message)
  puts("=> #{message}")
end

def win?(first, second)
  WINNING_SCENARIOS.each_with_index do |combo, index|
    if combo == first + " " + second
      return true
    elsif index == WINNING_SCENARIOS.length - 1
      return false
    end
  end
end

def display_results(player, computer)
  if win?(player, computer)
    "You won!"
  elsif win?(computer, player)
    "Computer won!"
  else
    "It's a tie."
  end
end

def scoreboard(result, player, computer)
  if result.include?('You') && player.count < 5
    player << 1
    "You: #{player.count}."
  elsif result.include?('Computer') && computer.count < 5
    computer << 1
    "Computer: #{computer.count}"
  end
end

def restart?
  prompt("Do you want to play another game of first to five?")
  gets.chomp
end

def continue_playing?
  prompt("Do you want to play again?")
  gets.chomp
end

def game_over?(total1, total2)
  if total1 == 5
    prompt("Winner! you:#{total1}, computer:#{total2}")
    restart?
  elsif total2 == 5
    prompt("Game Over: computer:#{total2}, you:#{total1}")
    restart?
  else
    continue_playing?
  end
end

def reset(score1, score2)
  loop do
    score1.delete_at(0)
    break if score1.empty?
  end
  loop do
    score2.delete_at(0)
    break if score2.empty?
  end
end

loop do # main loop
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}.")
    prompt("(Use the 1st letter for shorthand.)")
    prompt("(Use the first two letters for 'spock' and 'scissors.)")
    choice = gets.chomp
    if SHORTHAND.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = SHORTHAND.sample
  full_choice = VALID_CHOICES[SHORTHAND.index(choice)]
  full_computer_choice = VALID_CHOICES[SHORTHAND.index(computer_choice)]
  prompt("You chose: #{full_choice}; Computer chose: #{full_computer_choice}")
  round_winner = display_results(choice, computer_choice)
  prompt(round_winner)
  prompt(scoreboard(round_winner, your_score, computer_score))
  your_total = your_score.count
  computer_total = computer_score.count
  again = game_over?(your_total, computer_total)
  reset(your_score, computer_score) if your_total == 5 || computer_total == 5
  break unless again.downcase().start_with?('y')
end

prompt("Thank you for playing. Good bye!")
