# def say_hi(name)
#   puts "Hi #{name}"
# end


# say_hi("John")
# say_hi("Paul")
# say_hi("Ringo")


# def full_name(first_name, last_name)
#   name = first_name.capitalize + " " + last_name.capitalize
#   # return name
# end

# puts full_name("boris", "paillard")   # => "Boris Paillard"
# puts full_name("seb", "saunier")      # => "Seb Saunier"


# def example
#   return "tutu"
# end


# res = example

# # puts res



# if aire(rayon)
#   if rayon < 0
#     0
#   else
#     calcul
#   end
# end



def aire(rayon)
  return 0 if rayon < 0

  3.14 * rayon * rayon
end

# def max(x, y)
#   if x > y
#     return x
#   else
#     return y
#   end
# end

# first_number = 2
# second_number = 5
# largest_number = max(first_number, second_number)
# puts largest_number   # => 5

puts aire(3)
puts aire(-3)
puts aire(2)
