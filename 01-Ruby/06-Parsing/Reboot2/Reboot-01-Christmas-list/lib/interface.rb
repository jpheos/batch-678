require 'awesome_print'
require_relative 'scrapper'
# GIFTS = ["roller", "macbook"]

GIFTS = [
  {
    name: "roller",
    bought: false
  },
  {
    name: "macbook",
    bought: true
  },
  {
    name: "iphone",
    bought: false
  },
  {
    name: "chocolate",
    bought: false
  }
] # a adapter le code pour pouvoir utiliser ce genre de variable

def welcome
  puts "> Welcome to your Christmas gift list"
end

def user_choice
  puts "\n> Which action [list|add|delete|mark|idea|quit]?"
  print "> "
  gets.chomp
end

def goodbye
  puts "> Goodbye"
end

def list
  GIFTS.each_with_index do |gift, index|
    done = gift[:bought] ? 'X' : ' '
    puts "#{index + 1} - [#{done}] #{gift[:name]}"
  end
end

def add
  puts "Enter a gift name:"
  print "> "
  gift_name = gets.chomp
  GIFTS << {
    name: gift_name,
    bought: false
  }
  puts "#{gift_name} bien ajouté à la liste"
end

def mark
  list
  puts "What gift do you want to mark? (Enter a number)"
  print "> "

  index = gets.chomp.to_i - 1

  # if GIFTS[index].nil?
  #   puts "Enter a number between 1 and #{GIFTS.size}"
  #   mark
  #   return
  # end

  gift = GIFTS[index]
  gift[:bought] = true
end

def delete
  list
  puts "What gift do you want to remove? (Enter a number)"
  print "> "

  index = gets.chomp.to_i - 1

  # if GIFTS[index].nil?
  #   puts "Enter a number between 1 and #{GIFTS.size}"
  #   delete
  #   return
  # end

  gift = GIFTS.delete_at(index)
  # gift = gets.chomp
  # GIFTS.delete(gift)
  puts "#{gift[:name]} a bien été supprimé"
end

def idea
  puts "What are you looking for on Etsy?"
  print "> "
  user_idea = gets.chomp
  list_etsy = scrapper(user_idea)
  list_etsy.each_with_index do |etsy_item, index|
    puts "#{index + 1} - #{etsy_item}"
  end

  print "What gift do you want to add? (Enter a number)\n> "
  index = gets.chomp.to_i - 1

  gift_name = list_etsy[index]
  GIFTS << { name: gift_name, bought: false }
  puts "#{gift_name} bien ajouté à la liste"
end

def main
  loop do
    case user_choice
    when "list" then list
    when "add" then add
    when "delete" then delete
    when "mark" then mark
    when "idea" then idea
    when "quit" then break
    end
  end
end

welcome
main
goodbye
