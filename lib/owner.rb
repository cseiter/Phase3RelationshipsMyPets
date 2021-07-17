class Owner
  # code goes here

  attr_reader :name, :species

  @@all = []

  def initialize(name)
    @name=name
    @species = "human"
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def say_species
    "I am a #{species}."
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end

  def cats
    #@@all cats equal to owner
    Cat.all.select{|owned_cats| owned_cats.owner == self}
  end

  def dogs
    Dog.all.select{|owned_dogs| owned_dogs.owner == self}
  end

  def buy_cat(name)
    Cat.new(name,self)
  end

  def buy_dog(name)
    Dog.new(name,self)
  end

end