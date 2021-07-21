require 'csv'
require_relative '../models/order'
require_relative 'base_repository'

class OrderRepository < BaseRepository

  def initialize(orders_csv_path, meal_repository, customer_repository, employee_repository)
    @meal_repository = meal_repository
    @customer_repository = customer_repository
    @employee_repository = employee_repository
    super(orders_csv_path)
  end

  def undelivered_orders
    @elements.reject(&:delivered?)
  end

  private

  def row_to_element(row)
    row[:id] = row[:id].to_i
    row[:meal] = @meal_repository.find(row[:meal_id].to_i)
    row[:customer] = @customer_repository.find(row[:customer_id].to_i)
    row[:employee] = @employee_repository.find(row[:employee_id].to_i)
    row[:delivered] = row[:delivered] == "true"
    Order.new(row)
  end

  def csv_headers
    ["id", "meal_id", "customer_id", "employee_id", "delivered"]
  end

  def element_to_row(element)
    [element.id, element.meal.id, element.customer.id, element.employee.id, element.delivered?]
  end
end
