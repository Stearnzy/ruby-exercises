class Hobbit
  attr_accessor :name, :disposition, :age

  def initialize(name, disposition = "homebody")
    @name = name
    @disposition = disposition
    @age = 0
  end

  def celebrate_birthday
    @age += 1
  end

  def adult?
    if @age >= 33
      return true
    else
      return false
    end
  end

  def old?
    if @age >= 101
      return true
    else
      return false
    end
  end

  def has_ring?
    if @name == "Frodo"
      return true
    else
      return false
    end
  end

  def is_short?
    return true
  end
end


frodo = Hobbit.new("Frodo")
101.times do
  frodo.celebrate_birthday
end
p frodo.old?

sam = Hobbit.new("Sam")
p sam.has_ring?

p frodo.has_ring?
