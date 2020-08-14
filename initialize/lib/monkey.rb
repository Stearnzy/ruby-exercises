class Monkey
  attr_reader :name, :type, :favorite_food

  def initialize(args)
    @name = args[0]
    @type = args[1]
    @favorite_food = args[2]
  end
end

marge = Monkey.new(["Marge", "Bonobo", "Banana"])
p marge.name
p marge.type
p marge.favorite_food
