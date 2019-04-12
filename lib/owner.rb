class Owner

  attr_accessor :pets
  attr_reader :name

  @@all = []

  def initialize(name)
    @pets = {fishes: [], cats: [], dogs: []}
    all << self
  end

  def self.all
    @@all
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

end
