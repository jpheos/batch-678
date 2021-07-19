require_relative 'recipe'
require 'nokogiri'
require 'open-uri'

class ScrapeAllRecipesService
  def initialize(keyword)
    @keyword = keyword
  end

  def call
    url = "https://www.allrecipes.com/search/results/?search=#{@keyword}"
    doc = Nokogiri::HTML(URI.open(url))
    doc.search('.card__recipe').map do |card|
      name        = card.search('.card__title').first.text.strip
      description = card.search('.card__summary').first.text.strip
      rating = card.search('.rating-star.active').size
      rating = nil if rating.zero?
      Recipe.new(name, description, rating)
    end
  end
end
