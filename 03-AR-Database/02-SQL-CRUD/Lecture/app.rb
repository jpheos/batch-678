require 'awesome_print'
require 'sqlite3'
DB = SQLite3::Database.new("db/db.sqlite")
DB.results_as_hash = true

require_relative 'models/doctor.rb'

doctor = Doctor.new(
  first_name: "Clément",
  last_name:  "Moreno",
  specialty:  "Médecin du sport",
)

doctor.create

ap Doctor.all
puts "------------"
p doctor