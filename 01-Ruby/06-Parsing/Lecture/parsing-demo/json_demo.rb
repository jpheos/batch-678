require 'awesome_print'
require 'json'

# TODO - let's read/write data from beers.json
# filepath    = 'data/beers.json'


# json = File.read(filepath)


# ap json

# data = JSON.parse(json)


# ap data


filepath = 'data/my_beers.json'

data = {
  titi: "tutu"
}


File.open(filepath, 'wb') do |file|
  json =  JSON.pretty_generate(data)
  file.write(json)
end
