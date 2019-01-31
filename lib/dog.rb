class Dog

attr_reader :name
attr_accessor :mood

@@all = []

def self.all
  @@all
end


def initialize(name, mood = "nervous", species = "Dog")
  @name = name
  @mood = mood
  @species = species
  @@all << self
end







end
