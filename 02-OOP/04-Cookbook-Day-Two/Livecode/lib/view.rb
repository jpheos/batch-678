class View
  def display(recipes)
    recipes.each_with_index do |recipe, index|
      stars = "⭐️" * (recipe.rating || 0)
      done = recipe.done ? 'X' : ' '
      puts "#{index + 1} - [#{done}] #{recipe.name} (#{recipe.description}) (#{stars})"
    end
  end

  def ask_name
    puts "Enter a name:"
    print "> "
    gets.chomp
  end

  def ask_description
    puts "Enter a description:"
    print "> "
    gets.chomp
  end

  def ask_rating
    puts "Enter a rating (1-5):"
    print "> "
    gets.chomp.to_i
  end

  def ask_index
    puts "Enter a number:"
    print "> "
    gets.chomp.to_i - 1
  end

  def ask_ingredient
    puts "What ingredient would you like a recipe for?"
    print "> "
    gets.chomp
  end

  def importing(recipe)
    puts "Importing \"#{recipe.name}\"..."
  end
end
