class Cat

attr_reader :name
attr_accessor :mood

@@all = []

def self.all
  @@all
end


def initialize(name, mood = "nervous", species = "Cat")
  @name = name
  @mood = mood
  @species = species
  @@all << self
end




end
