running = true

while running
  # Create an array that contains the options to pick
  options = ['rock','paper','scissors']
  # Pick a random selection from the computer (sample)
  computer_hand = options.sample
  # Ask the user (player) to pick a hand (puts) (gets chomp)
  puts 'Pick a hand: '
  player_hand = gets.chomp
  # Check if the user choice is valid, if not repeat until it is
  # unless is negative form of if
  until options.include?(player_hand)
    puts 'Pick again your choice is not valid (rock, paper or scissors):'

    player_hand = gets.chomp
  end

  # Compare the user answer with the computer choice: Win/Lose/Draw

  # DRAW SCENARIO
  # when computer hand == player hand?
  # DRAW

  if player_hand == computer_hand
    puts "That's a draw, you both selected #{player_hand}"
  else
    # WINNING SCENARIO
    player_wins = nil

    # what happens when computer hand is == rock? 
    if computer_hand == 'rock'
      # winning: paper
      player_wins = player_hand == 'paper'
    elsif computer_hand == 'paper'
      player_wins = player_hand == 'scissors'
    elsif computer_hand == 'scissors'
      player_wins = player_hand == 'rock'
    else
      player_wins = false
    end

    # CLOSING MESSAGE 
    # Check if player win and display a winning/losing message
    # if player_wins
    #   puts "You won! against #{computer_hand}"
    # else
    #   puts "You lost against #{computer_hand}"
    # end

    puts player_wins ? "You won! against #{computer_hand}" : "You lost against #{computer_hand}"
  end
end