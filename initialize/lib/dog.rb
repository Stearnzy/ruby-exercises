class Dog
  attr_writer :name, :breed

  def initialize(name, breed)
    @name = name
    @breed = breed
  end

  def greeting
    "Woof, I'm #{@name} the #{@breed}!"
  end
end
