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
  
  attr_accessor :name, :pets
  attr_reader :species
  
  def initialize(species)
    @@all << self
    @species = species
    @pets = {fishes: [], dogs: [], cats: []}
  end
  
  def say_species
    "I am a #{@species}."
  end
  
  def buy_fish(name)
    @pets[:fishes] << Fish.new(name) unless @pets[:fishes].include?(Fish.new(name))
  end
  
  def buy_cat(name)
    @pets[:cats] << Cat.new(name) unless @pets[:cats].include?(Cat.new(name))
  end
  
  def buy_dog(name)
    @pets[:dogs] << Dog.new(name) unless @pets[:dogs].include?(Dog.new(name))
  end
  
  def walk_dogs
    @pets[:dogs].each {|dog| dog.mood = "happy"}
  end
  
end