class Animal
  attr_accessor :weight, :zoo
  attr_reader :species, :nickname
  @@all = []

  def initialize(species, weight, nickname, zoo)
    @species = species
    @weight = weight
    @nickname = nickname
    @zoo = zoo
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_species(species)
    @@all.select do |animal|
      if animal.species == species
        animal
      end
    end
  end

end
