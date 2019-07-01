require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'

# Animal.new(species, weight, nickname, zoo)
# Zoo.new(name, location)
#Test your code here
zoo1 = Zoo.new("Bronx Zoo", "Bronx")
zoo2 = Zoo.new("San Diego Zoo", "San Diego")
zoo3 = Zoo.new("Central Park Zoo", "New York City")

animal1 = Animal.new("dog", 55, "pup", zoo1)
animal2 = Animal.new("tiger", 324, "stripes", zoo1)
animal3 = Animal.new("lion", 402, "king", zoo2)
animal4 = Animal.new("bear", 679, "the beast", zoo2)
animal5 = Animal.new("puma", 232, "runner", zoo3)
animal6 = Animal.new("lizard", 4, "lizzy", zoo3)


binding.pry
puts "done"
