class Horse
  attr_accessor :name, :diet

  def initialize(name)
    @name = name
    @diet = []
  end

  def name
    @name
  end

  def add_to_diet(diet)
    self.diet << diet
  end

  def diet
    @diet
  end
end

# harry = Horse.new("Harry")
# harry.name
# p harry.diet
# harry.add_to_diet("Hay")
# p harry.diet
# harry.add_to_diet("Sugar Cubes")
# p harry.diet
