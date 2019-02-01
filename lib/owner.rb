require "pry"
class Owner
  # code goes here
  @@all = []
  @@count = 0
  attr_accessor :pets, :name
  attr_reader :species

  def self.all
    @@all
  end

  def self.count
    @@count

  end

  def initialize(species)
    @@all << self
    @@count += 1
    @species = "human"
    @pets = {fishes:[] , dogs:[], cats:[]}
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(fish)
    self.pets[:fishes]<< Fish.new(fish)
  end

  def buy_cat(cat)
    self.pets[:cats]<< Cat.new(cat)
  end

  def buy_dog(dog)
    self.pets[:dogs]<< Dog.new(dog)
  end


  def walk_dogs
    self.pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    self.pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    self.pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    self.pets.each do |pet_type, pet|
      pet.each do |p|
        p.mood = "nervous"
      end
      self.pets[pet_type].clear
    end
  end

  def list_pets
    "I have #{self.pets[:fishes].size} fish, #{self.pets[:dogs].size} dog(s), and #{self.pets[:cats].size} cat(s)."
  end

  def self.reset_all
    if @@count > 0
      @@count = 0
      @@all.clear
    end
  end

end
