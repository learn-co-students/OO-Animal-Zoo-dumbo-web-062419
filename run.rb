require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here

  zoo1 = Zoo.new("Bronx Zoo", "Bronx")
  zoo2 = Zoo.new("San Diego Zoo", "San Diego")

  animal1 = Animal.new("Cat", 200, "Simba")
  animal1.zoo = zoo2
  animal2 = Animal.new("Ape", 140, "Baboon")
  animal2.zoo = zoo1
  animal3 = Animal.new("Ape", 160, "Monkey")
  animal3.zoo = zoo1
  animal4 = Animal.new("Dog", 80, "Wolf")
  animal4.zoo = zoo1

binding.pry
puts "done"
