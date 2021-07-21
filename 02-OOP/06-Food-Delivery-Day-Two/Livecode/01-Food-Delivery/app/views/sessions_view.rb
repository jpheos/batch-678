class SessionsView
  def ask_username
    puts "Enter a username:"
    print "> "
    gets.chomp
  end

  def ask_password
    puts "Enter a password:"
    print "> "
    gets.chomp
  end

  def wrong_credentials
    puts "Wrong credentials, try again.."
  end
end
