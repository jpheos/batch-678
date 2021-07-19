require_relative 'view'
require_relative 'recipe'
require_relative 'scrape_all_recipes_service'

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
    rating = @view.ask_rating
    recipe = Recipe.new(name, description, rating)
    @cookbook.add_recipe(recipe)
  end

  def destroy
    display_all
    recipe_index = @view.ask_index
    @cookbook.remove_recipe(recipe_index)
  end

  def import
    # deamnde un ingredient
    ingredient = @view.ask_ingredient
    # on va choper des recettes à partir de cet ingredient
    recipes = ScrapeAllRecipesService.new(ingredient).call
    # on lui affiche des propositions
    @view.display(recipes)
    # on lui demande un index
    recipe_index = @view.ask_index
    # on lui dit qu on est en train de l importer
    recipe = recipes[recipe_index]
    @view.importing(recipe)
    @cookbook.add_recipe(recipe)
  end

  def mark_as_done
    recipes = @cookbook.all
    @view.display(recipes)
    recipe_index = @view.ask_index
    recipe = recipes[recipe_index]
    recipe.mark_as_done!
    @cookbook.save
  end

  private

  def display_all
    recipes = @cookbook.all
    @view.display(recipes)
  end
end
