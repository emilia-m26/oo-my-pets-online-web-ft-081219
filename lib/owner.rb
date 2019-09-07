class Owner
  attr_accessor :species
  attr_reader :name
  
  def initialize(name)
    @name=name
    @species= human
  end
end