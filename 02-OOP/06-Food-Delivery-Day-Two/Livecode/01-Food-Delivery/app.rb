require_relative 'app/repositories/meal_repository'    # You need to create this file!
require_relative 'app/repositories/customer_repository'    # You need to create this file!
require_relative 'app/repositories/employee_repository'    # You need to create this file!
require_relative 'app/repositories/order_repository'    # You need to create this file!

require_relative 'app/controllers/meals_controller'    # You need to create this file!
require_relative 'app/controllers/customers_controller'    # You need to create this file!
require_relative 'app/controllers/sessions_controller'    # You need to create this file!
require_relative 'app/controllers/orders_controller'    # You need to create this file!

require_relative 'router'

meal_csv_file = File.join(__dir__, 'data/meals.csv')
meal_repository = MealRepository.new(meal_csv_file)
meals_controller = MealsController.new(meal_repository)


customer_csv_file = File.join(__dir__, 'data/customers.csv')
customer_repository = CustomerRepository.new(customer_csv_file)
customers_controller = CustomersController.new(customer_repository)


employee_csv_file = File.join(__dir__, 'data/employees.csv')
employee_repository = EmployeeRepository.new(employee_csv_file)
sessions_controller = SessionsController.new(employee_repository)


order_csv_file = File.join(__dir__, 'data/orders.csv')
order_repository = OrderRepository.new(order_csv_file, meal_repository, customer_repository, employee_repository)
orders_controller = OrdersController.new(meal_repository, customer_repository, employee_repository, order_repository)


router = Router.new(meals_controller, customers_controller, orders_controller, sessions_controller)

# Start the app
router.run

