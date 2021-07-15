require_relative 'animal'

class Lion < Animal
  def eat(food)
    "#{super}. Law of the Jungle!"
  end

  private

  def sound
    "roars"
  end
end
