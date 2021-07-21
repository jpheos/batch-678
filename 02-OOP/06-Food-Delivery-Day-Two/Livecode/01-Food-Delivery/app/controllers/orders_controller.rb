require_relative '../views/meals_view'
require_relative '../views/orders_view'
require_relative '../views/customers_view'
require_relative '../views/employees_view'

require_relative '../models/order'

class OrdersController
  def initialize(meal_repository, customer_repository, employee_repository, order_repository)
    @meal_repository = meal_repository
    @customer_repository = customer_repository
    @employee_repository = employee_repository
    @order_repository = order_repository

    @meals_view = MealsView.new
    @orders_view = OrdersView.new
    @customers_view = CustomersView.new
    @employees_view = EmployeesView.new
  end

  def add
    meals = @meal_repository.all
    @meals_view.display(meals)
    meal_index = @orders_view.ask_index
    meal = meals[meal_index]

    customers = @customer_repository.all
    @customers_view.display(customers)
    customer_index = @orders_view.ask_index
    customer = customers[customer_index]

    employees = @employee_repository.all
    @employees_view.display(employees)
    employee_index = @orders_view.ask_index
    employee = employees[employee_index]

    order = Order.new(meal: meal, customer: customer, employee: employee)
    @order_repository.create(order)
  end

  def list_undelivered_orders
    ap "je suis dans #{__method__}"
  end

  def list_my_orders
    ap "je suis dans #{__method__}"
  end

  def mark_as_delivered
    ap "je suis dans #{__method__}"
  end
end
