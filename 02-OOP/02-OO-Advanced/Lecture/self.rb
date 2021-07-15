require 'awesome_print'

# class Castle
#   def initialize(name, ruler)
#     @name, @ruler = name, ruler
#   end

#   def castle_details
#     ap self.ruler_name
#     "#{@name} is ruled by #{ruler_name}"
#   end

#   def ruler_name
#     @ruler.capitalize
#   end
# end


# dragonstone = Castle.new("Dragonstone", "targaryen")
# toto = Castle.new("toto", "titi")
# ap dragonstone.ruler_name
# ap toto.ruler_name
# puts "---------------"
# puts dragonstone.castle_details # => "Dragonstone is ruled by Targaryen"
# puts toto.castle_details # => "Dragonstone is ruled by Targaryen"


class Butler
  def initialize(house)
    @house = house # We want @house to store an instance of House
  end

  def clean_house
    puts "#{@house.name} cleaned!"
  end
end

class House
  attr_reader :name, :butler

  def initialize(name)
    @name = name
    @butler = Butler.new(self)
    # @butler = Butler.new(???) # We need to pass the current instance of House
  end
end

h1 = House.new("maison rouge")

p h1
p h1.butler

h1.butler.clean_house
