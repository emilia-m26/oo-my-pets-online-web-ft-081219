class Owner
  attr_accessor 
  attr_reader :name, :species
  @@all=[]
  
  def initialize(name)
    @name=name
    @species= "human"
    @@all << self
  end
  
  def say_species
    "I am a #{@species}."
  end
  
  def self.all 
    @@all
  end
  
  def self.count
    @@all.count
  end
  
  def self.reset_all
    self.all.clear
  end
  
  def cats
    Cat.all.select do |cat| 
    cat.owner ==  self
    end
  end
  
  def dogs
    Dog.all.select do |dog| 
    dog.owner ==  self
    end
  end
  
  def buy_cat(name)
       Cat.new(name,self)
  end

  def buy_dog(name)
       Dog.new(name,self)
  end
  
  def walk_dogs
    self.dogs.each {|walk| walk.mood = "happy"}
  end
  
  def feed_cats
    self.cats.each {|feed| feed.mood = "happy"}
  end
  
  def sell_pets
    pets = self.dogs + self.cats
    
    pets.each do |pet| 
      pet.mood = "nervous"
      pet.owner = nil
    end
    
    def list_pets
      "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
    end
    
  end
  
  
end