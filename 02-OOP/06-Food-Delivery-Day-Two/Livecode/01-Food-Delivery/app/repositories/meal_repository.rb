require 'csv'
require_relative '../models/meal'
require_relative 'base_repository'

class MealRepository < BaseRepository

  private

  def row_to_element(row)
    row[:id] = row[:id].to_i
    row[:price] = row[:price].to_i
    Meal.new(row)
  end

  def csv_headers
    ["id", "name", "price"]
  end

  def element_to_row(element)
    [element.id, element.name, element.price]
  end
end
