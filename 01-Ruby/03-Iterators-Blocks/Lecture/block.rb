require 'awesome_print'

def courses
  ap "je démarre les courses"
  sleep(3)
  ap "j'ai fini les courses"
end

def jouer
  ap "je commence à jouer"
  sleep(2)
  ap "j'ai fini de jouer"
end

def timer
  ap block_given?
  puts "je démarre mon chonnomètre"
  time_start = Time.now
  yield
  puts "je stop mon chonnomètre"
  time_end = Time.now
  ap "time: #{time_end - time_start}"
end


timer do
  courses
end

# # ap timer


# # ap timer


# timer do
#   jouer
# end

# timer do
#   jouer
# end
# # timer do
# #   jouer
# # end


# def bonjour(first_name, last_name)
#   full_name = "#{first_name.capitalize} #{last_name.upcase}"
#   return "Bonjour, #{full_name}"
# end

# def greet(first_name, last_name)
#   full_name = "#{first_name.capitalize} #{last_name.upcase}"
#   return "Hello, #{full_name}"
# end

# puts bonjour('john', 'lennon')
# puts greet('john', 'lennon')


# def name(first_name, last_name)
#   fn = "#{first_name.capitalize} #{last_name.upcase}"
#   str = yield(fn)
#   puts "DEBUG: #{str}"
#   return str
# end

# puts name('john', 'lennon') { |full_name| "Bonjour, #{full_name}" }
# puts name('john', 'lennon') { |full_name| "Hello, #{full_name}" }
