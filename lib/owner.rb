
require 'pry'
class Owner
  # code goes her
  attr_accessor :name, :pets
  attr_reader :species
  attr_writer :pets


  @@all = []
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @pets = {:fishes=>[], :dogs=>[], :cats=>[]}
  end

  def self.all
      @@all
  end

  def self.count
    @@all.length
  end
  def self.reset_all
    @@all = []
  end

  def pets
    @pets
  end


  def say_species
    "I am a #{@species}."
  end

  def buy_fish(fish_name)
    fish_name=Fish.new(fish_name)
    self.pets[:fishes]<< fish_name
  end

  def buy_cat(cat_name)
    cat_name=Cat.new(cat_name)
    self.pets[:cats]<< cat_name
  end

  def buy_dog(dog_name)
    dog_name=Dog.new(dog_name)
    self.pets[:dogs]<< dog_name
  end

  def walk_dogs
    self.pets[:dogs].map do |dog|
      dog.mood="happy"
    end
  end

  def play_with_cats
    self.pets[:cats].map do |cat|
      cat.mood="happy"
    end
  end

def feed_fish
  self.pets[:fishes].map do |fish|
    fish.mood="happy"
  end
end

def sell_pets
  self.pets[:fishes].map do |fish|
    fish.mood="nervous"
  end
  self.pets[:dogs].map do |dog|
    dog.mood="nervous"
  end
  self.pets[:cats].map do |cat|
    cat.mood="nervous"
  end

end

def list_pets
"I have #{self.pets[:fishes].length} fish, #{self.pets[:dogs].length} dog(s), and #{self.pets[:cats].length} cat(s)."
end

end
