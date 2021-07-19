require 'awesome_print'
require_relative 'recipe'

require 'nokogiri'
require 'open-uri'

# require_relative 'recipe'
# require_relative 'controller'
# require_relative 'cookbook'    # You need to create this file!

# csv_file   = File.join(__dir__, 'recipes.csv')
# cookbook   = Cookbook.new(csv_file)

# controller = Controller.new(cookbook)

# controller.destroy


def recipes_from_allrecipes(keyword)
  url = "https://www.allrecipes.com/search/results/?search=#{keyword}"
  doc = Nokogiri::HTML(URI.open(url))
  doc.search('.card__recipe').map do |card|
    name        = card.search('.card__title').first.text.strip
    description = card.search('.card__summary').first.text.strip
    rating = card.search('.rating-star.active').size
    rating = nil if rating.zero?
    Recipe.new(name, description, rating)
  end
end





keyword = "chocolat"
recipes = recipes_from_allrecipes(keyword)
ap recipes
