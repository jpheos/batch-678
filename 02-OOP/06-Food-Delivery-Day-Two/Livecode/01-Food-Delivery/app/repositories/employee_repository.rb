require 'csv'
require_relative '../models/employee'
require_relative 'base_repository'

class EmployeeRepository < BaseRepository
  undef create

  def all_riders
    # @elements.select(&:rider?)
    @elements.select { |element| element.rider? }
  end

  def find_by_username(username)
    @elements.find { |element| element.username == username }
  end

  private

  def row_to_element(row)
    row[:id] = row[:id].to_i
    Employee.new(row)
  end
end
