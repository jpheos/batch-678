require 'awesome_print'
require 'nokogiri'
require 'open-uri'
require 'yaml'



# ON VEUT CHOPER LA DATA
  # on va choper les 5 meilleurs films
  # pour chacun de ces films, on va chercher la donnée associée

# ON VEUT LA STOCKER DANS UN FICHIER


# movies = top_movies

def top_movies
  html = open("https://www.imdb.com/chart/top", {"Accept-Language:" => "en-US"}).read
  document = Nokogiri::HTML(html)
  document.css('.titleColumn a').first(5).map do |link|
    "https://www.imdb.com#{link['href']}"
  end
end
# # =>
# [
#   "https://www.imdb.com/title/tt0111161/",
#   "https://www.imdb.com/title/tt0068646/"
# ]




# ap top_movies

def movie_data(movie_url)
  html = open(movie_url, {"Accept-Language:" => "en-US"}).read
  document = Nokogiri::HTML(html)
  cast = document.css('.title-pc-list')[0].css('.ipc-metadata-list__item').last.css('ul li').map do |li|
    li.text
  end

  title = document.css('h1').first.text
  {
    cast: cast,
    title: title
  }
end


data = top_movies.map do |movie_url|
  movie_data(movie_url)
end

File.open("movies.yml", "w") { |file| file.write(data.to_yaml) }



# # =>
# {
#   cast: ["Tim Robbins" "Morgan Freeman" "Bob Gunton"],
#   ...
# }



# "https://www.imdb.com/title/tt0111161/




# #  [
# #   film1,
# #   film2
# #   ...
# #  ]



# #  {
# #   cast: ...,
# #   director:
# #   ...
# #  }
