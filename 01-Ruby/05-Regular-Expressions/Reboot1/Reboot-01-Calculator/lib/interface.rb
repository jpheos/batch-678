require_relative 'calculator'

def do_calcul
  puts "> Enter a first number:"
  print "> "
  nb1 = gets.chomp.to_i
  puts "> Enter a second one:"
  print "> "
  nb2 = gets.chomp.to_i
  puts "> Choose operation [+][-][*][/]"
  print "> "
  operator = gets.chomp

  result = calcul(nb1, nb2, operator)

  puts "> Result: #{result}"
end

def continue?
  puts "Do you want to calculate again? [Y/N]"
  gets.chomp.upcase == 'Y'
end

continue = true

while continue
  do_calcul
  continue = continue?
end
