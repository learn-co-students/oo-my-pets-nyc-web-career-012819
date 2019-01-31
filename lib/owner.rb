require 'pry'

class Owner

attr_reader :species
attr_accessor :name, :pets

@@all = []
@@count = 0

def self.all
  @@all
end

def self.count
  @@count
end

def initialize(name, species = "human")
  @name = name
  @@all << self
  @@count += 1
  @species = species
  @pets = {:cats=>[], :dogs=>[], :fishes=>[]}
end

def self.reset_all
  @@all = []
  @@count = 0
end

def say_species
  "I am a #{@species}."
end

def buy_fish(fish)
  new_fish = Fish.new(fish)
  @pets[:fishes] << new_fish
end

def buy_cat(cat)
  new_cat = Cat.new(cat)
  @pets[:cats] << new_cat
end

def buy_dog(dog)
  new_dog = Dog.new(dog)
  @pets[:dogs] << new_dog
end

def walk_dogs
  count = 0
  until count == Dog.all.length
    Dog.all[count].mood = "happy"
    count += 1
  end
end

def play_with_cats
  count = 0
  until count == Cat.all.length
    Cat.all[count].mood = "happy"
    count += 1
  end
end

def feed_fish
  count = 0
  until count == Fish.all.length
    Fish.all[count].mood = "happy"
    count += 1
  end
end

def sell_pets
  @pets.each do |animal, spec|
    spec.map do |stat|
      stat.mood = "nervous"
    end
    @pets[animal] = []
  end
end

def list_pets
  "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
end






end
