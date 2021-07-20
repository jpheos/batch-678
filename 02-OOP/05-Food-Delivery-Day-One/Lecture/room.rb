class Room
  attr_reader :capacity, :patients, :color
  attr_accessor :id

  def initialize(attributes = {})
    @capacity = attributes[:capacity] || 0
    @patients = attributes[:patients] || []
    @color = attributes[:color]
  end

  def full?
    @patients.size == @capacity
  end

  def add_patient(patient)
    raise StandardError, "Room is full!" if full?

    patient.room = self
    @patients << patient
  end
end
