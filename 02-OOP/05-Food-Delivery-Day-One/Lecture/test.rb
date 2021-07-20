require 'awesome_print'
require_relative 'patient'
require_relative 'room'
require 'csv'

# toto = Room.new(color: "red", capacity: 4)
# room2 = Room.new(color: "yellow", capacity: 2)

# p1 = Patient.new(name: 'toto')
# p2 = Patient.new(name: 'tata', cured: false)
# p3 = Patient.new(name: 'tete', cured: false)
# p4 = Patient.new(name: 'tutu', cured: true)

# toto.add_patient(p1)
# toto.add_patient(p2)
# toto.add_patient(p3)
# room2.add_patient(p4)

# ap p3





patients = []
# csv_options = { headers: :first_row, header_converters: :symbol }
csv_options = {headers: :first_row, header_converters: :symbol}
CSV.foreach('patients.csv', csv_options) do |row|
  row[:id]    = row[:id].to_i          # Convert column to Integer
  row[:cured] = row[:cured] == "true"  # Convert column to boolean
  patients << Patient.new(row)
end

ap patients
