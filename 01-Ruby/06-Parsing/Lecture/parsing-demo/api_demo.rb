require 'awesome_print'
require 'json'
require 'open-uri'

# TODO - Let's fetch name and bio from a given GitHub username

puts "enter a github nickname"
print "> "
nickname = gets.chomp

url = "https://api.github.com/users/#{nickname}"

json = URI.open(url).read

data = JSON.parse(json)


repos = data["public_repos"]


puts "#{nickname} has #{repos} repos"
