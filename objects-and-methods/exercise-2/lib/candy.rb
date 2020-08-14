class Candy
  attr_accessor :type, :sugar
  def initialize(type, sugar = 100)
    @type = type
    @sugar = sugar
  end

  def type
    @type
  end

  def sugar
    @sugar
  end
end
