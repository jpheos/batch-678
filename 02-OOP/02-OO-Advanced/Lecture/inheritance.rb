require 'awesome_print'

class Building
  attr_reader :name, :width, :length
  def initialize(name, width, length)
    @name = name
    @width, @length = width, length
  end

  def floor_area
    # ap "je suis dans floor_area de Building"
    @width * @length
  end
end

class House < Building

end

class Castle < Building
  attr_accessor :butler

  def has_a_butler?
    @butler != nil
  end

  def floor_area
    # ap "je suis dans floor_area de Castle"
    super + 500
  end

  def self.categories
    ['Medieval', 'Norman', 'Ancient']
  end
end

h1 = House.new("maison1", 10, 10)
h2 = House.new("maison1", 10, 15)
c1 = Castle.new("chateau1", 100, 200)

# buildings = [h1, h2, c1]

# buildings.each do |building|
#   p "#{building.name}: #{building.floor_area} m2"
# end

# ap h1.floor_area
# puts "--------------------"
# ap c1.floor_area


# ap Castle.categories

ap Castle.name
ap c1.name
