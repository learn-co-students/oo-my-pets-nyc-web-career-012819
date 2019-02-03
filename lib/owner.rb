class Owner
attr_accessor :name, :pets
attr_reader :species
@@all = []
@@count = 0
def initialize(name)
  @name = name
  @species = name
  @pets = {:fishes => [], :dogs => [], :cats => []}
  @@all << self
  @@count += 1
end

def say_species
  "I am a #{species}."
end

def self.all
  @@all
end

def self.count
@@count
end

def self.reset_all
@@all.clear
@@count = 0
end

def buy_fish(name)
new_fish = Fish.new(name)
self.pets[:fishes] << new_fish
end

def buy_dog(name)
new_dog = Dog.new(name)
self.pets[:dogs] << new_dog
end

def buy_cat(name)
new_cat = Cat.new(name)
self.pets[:cats] << new_cat
end

def walk_dogs
self.pets[:dogs].each do |dog|
  dog.mood = 'happy'
end
end

def play_with_cats
  self.pets[:cats].each do |cat|
    cat.mood = 'happy'
  end
end

def feed_fish
  self.pets[:fishes].each do |fish|
    fish.mood = 'happy'
  end
end

def sell_pets
  self.pets.each do |species, array|
  array.each do |i|
    i.mood = 'nervous'
  end
end
self.pets.clear
end

def list_pets
  count_per_type = self.pets.map {|type, i| i.length}
  "I have #{count_per_type[0]} fish, #{count_per_type[1]} dog(s), and #{count_per_type[2]} cat(s)."
end
end
