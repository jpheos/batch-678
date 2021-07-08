require 'awesome_print'

arr = ["toto", "titi", "tata", "tete"]

# ap arr[1]
# ap arr[2]

# for i in 0...arr.size
#   # ap arr[i]
#   puts "#{i + 1} -- #{arr[i]}"
# end

# puts "------------"

# for element in arr
#   ap element
# end

# arr.each do |element|
#   puts element
# end

# ap "------------------------"

# arr.each_with_index do |element, index|
#   puts "#{index + 1} -- #{element}"
# end

# ap "------------------------"

# upcase_array = []

# arr.each do |element|
#   upcase_array << element.upcase
# end

# ap upcase_array


# downcase_array = arr.map do |x|
#   x.capitalize
# end

# ap "------------------------"

# ap downcase_array


musicians = ['David Gilmour', 'Roger Waters', 'Richard Wright', 'Nick Mason']

# first_name_musicians = musicians.map do |musician|
#   musician.split.first
# end

# ap first_name_musicians


# musicians_start_r = musicians.select do |musician|
#   musician.start_with?("R")
# end

# ap musicians_start_r

# musicians_start_r_count = musicians.count { |musician| musician.start_with?("R") }

# ap musicians_start_r_count

new_array = musicians.map do |musician|
  split = musician.split
  "firstname: #{split.first} -- lastname: #{split.last}"
end

ap new_array
