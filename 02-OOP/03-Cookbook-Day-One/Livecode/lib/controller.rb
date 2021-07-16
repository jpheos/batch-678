require_relative 'view'
require_relative 'recipe'

class Controller
  def initialize(cookbook)
    @cookbook = cookbook
    @view = View.new
  end

  def list
    display_all
  end

  def create
    name = @view.ask_name
    description = @view.ask_description
    recipe = Recipe.new(name, description)
    @cookbook.add_recipe(recipe)
  end

  def destroy
    display_all
    recipe_index = @view.ask_index
    @cookbook.remove_recipe(recipe_index)
  end

  private

  def display_all
    recipes = @cookbook.all
    @view.display(recipes)
  end
end
