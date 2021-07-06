require 'date'
require 'awesome_print'

# Date.new(2021,12,25)
def xmas_days
  # date_today        = Date.new(2021, 12, 28)
  date_today        = Date.today
  current_year      = date_today.year
  xmas_current_year = Date.new(current_year, 12, 25)

  # var = condition ? si_vrai : si_faux
  next_xmas = date_today > xmas_current_year ? xmas_current_year.next_year : xmas_current_year
  (next_xmas - date_today).to_i
end

ap xmas_days
