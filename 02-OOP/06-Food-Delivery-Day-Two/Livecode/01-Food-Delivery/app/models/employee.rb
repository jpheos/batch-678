class Employee
  attr_reader :username, :role, :password
  attr_accessor :id

  def initialize(attributes = {})
    @id         = attributes[:id]
    @username   = attributes[:username]
    @role       = attributes[:role]
    @password   = attributes[:password]
  end

  def manager?
    @role == "manager"
  end

  def rider?
    @role == "rider"
  end
end
