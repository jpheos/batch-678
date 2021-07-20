require_relative 'app/repositories/meal_repository'    # You need to create this file!
require_relative 'app/repositories/customer_repository'    # You need to create this file!

require_relative 'app/controllers/meals_controller'    # You need to create this file!
require_relative 'app/controllers/customers_controller'    # You need to create this file!

require_relative 'router'

meal_csv_file = File.join(__dir__, 'data/meals.csv')
meal_repository = MealRepository.new(meal_csv_file)
meals_controller = MealsController.new(meal_repository)


customer_csv_file = File.join(__dir__, 'data/customers.csv')
customer_repository = CustomerRepository.new(customer_csv_file)
customers_controller = CustomersController.new(customer_repository)


router = Router.new(meals_controller, customers_controller)

# Start the app
router.run
