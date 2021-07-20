require 'awesome_print'
require_relative 'app/models/meal'
require_relative 'app/controllers/meals_controller'
require_relative 'app/repositories/meal_repository'

meal_csv_file_path = 'data/meals.csv'
meal_repo = MealRepository.new(meal_csv_file_path)
meal_controller = MealsController.new(meal_repo)


meal = Meal.new(name: 'pizza', price: 15)
meal2 = Meal.new(name: 'pizza2', price: 16)

meal_controller.list
