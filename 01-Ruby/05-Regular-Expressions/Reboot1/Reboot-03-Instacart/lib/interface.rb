require 'awesome_print'

PRODUCTS = {
  "kiwi" => 1.25,
  "banana" =>  0.5,
  "mango" =>  4,
  "asparagus" =>  4
}

# CART = {}
CART = Hash.new(0)

def welcome
  puts "> --------------------"
  puts "> Welcome to Instacart"
  puts "> --------------------"
  puts "> In our store today:"
  PRODUCTS.each do |name, price|
    puts "> #{name}: #{price}€"
  end
  puts "> --------------------"
end

def shop
  answer = nil
  while answer != "quit"
    puts "> Which item? (or 'quit' to checkout)"
    print "> "
    answer = gets.chomp
    if PRODUCTS.key?(answer)
      puts "How many?"
      print '> '
      quantity = gets.chomp.to_i
      # if CART.key?(answer)
      #   CART[answer] += quantity
      # else
      #   CART[answer] = quantity
      # end
      CART[answer] += quantity
    elsif answer != "quit"
      puts "> Sorry, we don't have #{answer} today.."
    end
  end
end


def bill
  puts "> -------BILL---------"
  total = 0
  CART.each do |name, quantity|
    price = PRODUCTS[name]
    sub_total = quantity * price
    total += sub_total
    puts "> #{name}: #{quantity} X #{price}€ = #{sub_total}€"
  end
  puts "> TOTAL: #{total}€"
  puts "> --------------------"
end

welcome
shop
bill



