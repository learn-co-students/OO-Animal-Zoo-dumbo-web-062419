class Zoo
  attr_accessor :name, :location
  @@all = []
  def initialize(name, location)
    @name = name
    @location = location

    @@all << self
  end

  def self.all
    @@all
  end

  def animals
    Animal.all.select do |animal|
      if animal.zoo == self
        animal
      end
    end
  end

  def animal_species
    result = []
    Animal.all.map do |animal|
      if animal.zoo == self
        result << animal.species
      end
    end
    result.uniq
  end

  def find_by_species(species)
    Animal.all.select do |animal|
      if animal.species == species
        animal
      end
    end
  end

  def animal_nicknames
    nicknames = []
    Animal.all.select do |animal|
      if animal.zoo == self
        nicknames << animal.nickname
      end
    end
    nicknames
  end

  def self.find_by_location(location)
    @@all.select do |zoo|
      if zoo.location == location
        zoo
      end
    end
  end

end
