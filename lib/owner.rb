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

end