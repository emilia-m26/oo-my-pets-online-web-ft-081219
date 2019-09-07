class Owner
  attr_accessor 
  attr_reader :name, :species
  
  def initialize(name)
    @name=name
    @species= "human"
  end
  
  def say_species
    "I am a #{@species}."
  end
  
  def self.all 
    @all
  end
  
end