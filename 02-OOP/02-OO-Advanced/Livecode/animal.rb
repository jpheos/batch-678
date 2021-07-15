class Animal
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def talk
    "#{@name} #{sound}"
  end

  def self.phyla
    %w[Deuterostomia Ecdysozoa Lophotrochozoa Radiata]
  end

  def eat(food)
    "#{@name} EATS a #{food}"
  end
end
