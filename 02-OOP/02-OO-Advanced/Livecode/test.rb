require_relative 'lion'
require_relative 'meerkat'
require_relative 'warthog'

animals = []

animals << Lion.new("Simba")
animals << Meerkat.new("Timon")
animals << Lion.new("nala")
animals << Warthog.new("Pumbaa")

animals.each do |animal|
  puts animal.talk
end

