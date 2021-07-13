# require 'open-uri'
require 'nokogiri'
require 'awesome_print'

# Let's scrape recipes from http://www.epicurious.com

file      = File.open('data/beers.xml')
document  = Nokogiri::XML(file)

document.root.xpath('beer').each do |beer|
  name        = beer.xpath('name').text
  appearance  = beer.xpath('appearance').text
  origin      = beer.xpath('origin').text

  puts "#{name}, a #{appearance} beer from #{origin}"
end
