class Owner
  attr_accessor 
  attr_reader :name, :species
  
  def initialize(name)
    @name=name
    @species= "human"
  end
  
  def say_species
    @species
  end
end