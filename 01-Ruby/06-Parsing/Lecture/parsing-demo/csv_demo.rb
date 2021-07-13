require 'awesome_print'
require 'csv'

# # TODO - let's read/write data from beers.csv
# filepath  = 'data/beers.csv'

# options = {headers: :first_row}

CSV.foreach(filepath, options) do |row|
  ap row
end

csv_options = { col_sep: ',', force_quotes: true, quote_char: '"' }
filepath    = 'data/my_beers.csv'

CSV.open(filepath, 'wb', csv_options) do |csv|
  csv << ['Name', 'Appearance', 'Origin']

  csv << ['Asahi', 'Pale Lager', 'Japan']
  csv << ['Guinness', 'Stout', 'Ireland']
  # # ...
end
