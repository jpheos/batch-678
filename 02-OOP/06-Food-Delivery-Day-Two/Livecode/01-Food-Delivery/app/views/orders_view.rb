class OrdersView
  def ask_index
    puts "Enter a number:"
    print "> "
    gets.chomp.to_i - 1
  end
end
