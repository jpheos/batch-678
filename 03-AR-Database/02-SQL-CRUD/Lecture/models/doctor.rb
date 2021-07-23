class Doctor
  def initialize(attrs = {})
    @id         = attrs[:id] || attrs["id"]
    @first_name = attrs[:first_name] || attrs["first_name"]
    @last_name  = attrs[:last_name] || attrs["last_name"]
    @specialty  = attrs[:specialty] || attrs["specialty"]
  end

  def self.all
    doctors = DB.execute('SELECT * FROM doctors')
    doctors.map { |doctor| Doctor.new(doctor) }
  end

  def create
    DB.execute("
      INSERT INTO doctors (first_name, last_name, specialty)
      VALUES ('#{@first_name}', '#{@last_name}', '#{@specialty}')
    ")
    @id = DB.last_insert_row_id
    return true
  end

  def update
  end

  def save
    if @id.nil?
      create
    else
      update
    end
  end
end