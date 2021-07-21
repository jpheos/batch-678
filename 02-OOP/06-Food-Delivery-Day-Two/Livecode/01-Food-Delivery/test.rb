require 'awesome_print'
require_relative 'app/repositories/meal_repository'
require_relative 'app/repositories/customer_repository'
require_relative 'app/repositories/employee_repository'
require_relative 'app/repositories/order_repository'
require_relative 'app/controllers/sessions_controller'
require_relative 'app/controllers/orders_controller'

meal_csv_file_path = 'data/meals.csv'
meal_repository = MealRepository.new(meal_csv_file_path)


customer_csv_file_path = 'data/customers.csv'
customer_repository = CustomerRepository.new(customer_csv_file_path)


employee_csv_file_path = 'data/employees.csv'
employee_repository = EmployeeRepository.new(employee_csv_file_path)

# sessions_controller = SessionsController.new(employee_repo)

# employee = sessions_controller.login # => Employee


orders_csv_path = 'data/orders.csv'
order_repository = OrderRepository.new(orders_csv_path, meal_repository, customer_repository, employee_repository)


orders_controller = OrdersController.new(meal_repository, customer_repository, employee_repository, order_repository)

orders_controller.add
