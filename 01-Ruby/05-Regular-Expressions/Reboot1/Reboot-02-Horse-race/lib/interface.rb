require 'awesome_print'

# TODO: you can build your horse race program here!
# Pseudo-code:
# 1. Print welcome and the horses names
# 2. Get user's bet
# 3. Run the race 🐴
# 4. Print results

def play_a_race
  puts "Choose horse:"
  puts ""

  HORSES.each_with_index do |horse, index|
    puts "#{index + 1} - #{horse}"
  end

  puts ""

  print '> '
  index = gets.chomp.to_i - 1

  choice = HORSES[index]

  winner = HORSES.sample

  puts "The winner is: #{winner}"

  if choice == winner
    puts "YOUPI TRALALA!"
    return true
  else
    puts "sorry try again..."
    return false
  end
end

def continue?
  puts "continue? [Y/N]"
  gets.chomp.upcase == 'Y'
end


HORSES = ["toto", "titi", "tata", "tete", "tutu"]

puts "------------"
puts "|  WELCOME |"
puts "------------"

continue = true
balance = 20

while continue && balance >= 10
  puts  "Your balance: #{balance}"
  # win = play_a_race
  # if play_a_race
  #   balance += 40
  # else
  #   balance -= 10
  # end
  balance += play_a_race ? 40 : -10
  continue = continue? if balance >= 10
end
