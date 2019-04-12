class Owner

  attr_accessor :pets, :name

  @@all = []
  @@count = 0

  def initialize(name)
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
    @@count += 1
  end

  def self.all
    @@all
  end

  def self.count
    @@count
  end

  def self.reset_all
    @@count = 0
  end

  def species
    "human"
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_cat(name)
    cat = Cat.new(name)
    pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    pets[:dogs] << dog
  end

  def buy_fish(name)
    fish = Fish.new(name)
    pets[:fishes] << fish
  end

  def walk_dogs(dog)
    dog.mood = "happy"
  end

end
