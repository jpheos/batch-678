class Router
  def initialize(meals_controller, customers_controller, orders_controller, sessions_controller)
    @meals_controller = meals_controller
    @customers_controller = customers_controller
    @orders_controller = orders_controller
    @sessions_controller = sessions_controller
    @running = true
  end

  def run
    puts "Welcome to the Cookbook!"
    puts "           --           "

    employee = @sessions_controller.login

    case employee.role
    when "manager" then run_manager
    when "rider" then run_rider
    end
  end

  private

  def run_manager
    while @running
      display_tasks_manager
      action = gets.chomp.to_i
      print `clear`
      route_action_manager(action)
    end
  end

  def run_rider
    while @running
      display_tasks_rider
      action = gets.chomp.to_i
      print `clear`
      route_action_rider(action)
    end
  end

  def route_action_manager(action)
    case action
    when 1 then @meals_controller.list
    when 2 then @meals_controller.add
    when 3 then @customers_controller.list
    when 4 then @customers_controller.add
    when 9 then stop
    else
      puts "Please press 1, 2, 3, 4 or 9"
    end
  end


  def route_action_rider(action)
    case action
    when 1 then @order_controller.list_my_orders
    when 2 then @order_controller.mark_as_delivered
    when 9 then stop
    else
      puts "Please press 1, 2, 3, 4 or 9"
    end
  end


  def stop
    @running = false
  end

  def display_tasks_manager
    puts ""
    puts "What do you want to do next?"
    puts "1 - List all meals"
    puts "2 - Create a new meal"
    puts "3 - List all customers"
    puts "4 - Create a new customer"
    puts "9 - Stop and exit the program"
  end

  def display_tasks_rider
    puts ""
    puts "What do you want to do next?"
    puts "1 - Mark as deliver"
    puts "2 - List all my undelivered orders"
    puts "9 - Stop and exit the program"
  end
end
