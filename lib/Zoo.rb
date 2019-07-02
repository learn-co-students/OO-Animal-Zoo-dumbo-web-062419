class Zoo
  attr_accessor :name, :location

  @@zoos = []

  def initialize(name, location)
    @name = name
    @location = location
    @@zoos << self
  end


  def self.all
    @@zoos
  end

  def animals
    Animal.all.select {|animal| animal.zoo == self}
  end

  def animal_species
    species = []
    Animal.all.select do |animal|
      if animal.zoo == self
        species << animal.species
      end
    end
    species.uniq
  end


end


# Zoo#animal_species should return an array of all the species
# (as strings) of the animals in the zoo. However, if you have two dogs,
# it should only return one "Dog" string (aka an unique array).
# Zoo#find_by_species should take in an animal's species as an
# argument and return an array of all the animals in that zoo,
# which are of that species.
# Zoo#animal_nicknames should return an array of all the nicknames
# of animals that a specific instance of a zoo has.
# Zoo.find_by_location should take in a location as an argument
# and return an array of all the zoos within that location.
