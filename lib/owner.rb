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
  
  def intitialize(species)
    @@all << self
    @species = species
    
  end
  
  def say_species
  end
  
end