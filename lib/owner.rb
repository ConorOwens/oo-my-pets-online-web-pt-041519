class Owner
  
  @@all = []
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.count
  end
  
  def self.reset_all
    @@all = []
  end
  
  attr_accessor :name
  attr_reader :species
  
  def initialize(species)
    @@all << self
    @species = species
    @pets = {fishes: [], dogs: [], cats: []}
  end
  
  def say_species
    "I am a #{@species}."
  end
  
end