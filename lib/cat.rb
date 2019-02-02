class Cat

  attr_accessor :mood
  attr_reader :name, :species

  def initialize(name)
    @name = name
    @mood = "nervous"
    @species = "cat"
  end

  def say_species
    "I am a #{@species}."
  end

end
