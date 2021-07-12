require 'awesome_print'
require 'yaml'

REGEX = /^(?<gender>[12])(?<year>\d{2})(?<month>0[1-9]|1[0-2])(?<department>0[1-9]|[1-9]\d)\d{6}(?<key>\d{2})/

MONTHS = %w[January February March April May June July August September October November December]

DEPARTMENTS = YAML.load_file('departments.yml')

def valid_key?(ssn)
  base = ssn[0..-3].to_i
  key = ssn[-2..-1].to_i

  (97 - base) % 97 == key
end

def gender_from_data(match_data)
  match_data[:gender] == '1' ? 'man' : 'woman'
end

def month_from_data(match_data)
  month_index = match_data[:month].to_i - 1
  MONTHS[month_index]
end

def department_from_data(match_data)
  DEPARTMENTS[match_data[:department]]
end


def french_ssn_info(ssn)
  ssn.gsub!(/\s/, '')

  match_data = ssn.match(REGEX)

  return "The number is invalid" if match_data.nil?
  return "The number is invalid" if valid_key?(ssn) == false

  gender = gender_from_data(match_data)
  month = month_from_data(match_data)
  year = match_data[:year]
  department = department_from_data(match_data)

  "a #{gender}, born in #{month}, 19#{year} in #{department}."
end


p french_ssn_info("184127645108946")
# p french_ssn_info("184126945108946")
# => "a man, born in December, 1984 in Seine-Maritime."

# p french_ssn_info("184127645108947")
# => "The number is invalid"

# p french_ssn_info("123")
# => "The number is invalid"
