class Owner

	attr_accessor :name, :pets
	attr_reader :species

	@@all = []

	def initialize(species = "human")
		@species = species
		@pets = {
			:fishes => [],
			:dogs => [],
			:cats => []
		}
		@@all << self
	end

	def say_species
		return "I am a #{self.species}."
	end

	def buy_fish(fish_name)
		self.pets[:fishes] << Fish.new(fish_name)
	end

	def buy_cat(cat_name)
		self.pets[:cats] << Cat.new(cat_name)
	end

	def buy_dog(dog_name)
		self.pets[:dogs] << Dog.new(dog_name)
	end

	def walk_dogs
		self.pets[:dogs].each { |dog| dog.mood = "happy" }
	end

	def play_with_cats
		self.pets[:cats].each { |cat| cat.mood = "happy" }
	end

	def feed_fish
		self.pets[:fishes].each { |fish| fish.mood = "happy" }
	end

	def sell_pets
		self.pets.each do |pet_category, pets|
			pets.each { |animal| animal.mood = "nervous" }
			pets.clear
		end
	end

	def list_pets
		fish_count = self.pets[:fishes].length
		dog_count = self.pets[:dogs].length
		cat_count = self.pets[:cats].length

		return "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
	end

	def self.all
		@@all
	end

	def self.count
		self.all.length
	end

	def self.reset_all
		self.all.clear
	end

end