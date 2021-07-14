require "pry-byebug"

def some_method
  puts 'Hello World' # Run 'step' in the console to move here
end

var = "toto"

binding.pry
some_method          # Execution will stop here.

var2 = "titi"
binding.pry
puts 'Goodbye World' # Run 'next' in the console to move here.
