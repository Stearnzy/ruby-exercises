class Medusa
  attr_accessor :name, :statues

  def initialize(name)
    @name = name
    @statues = []
  end

  def stare(victim)
    if @statues.count <= 2
      @statues << victim
      victim.stoned = true
    elsif @statues.count == 3
      @statues << victim
      victim.stoned = true
      @statues.first.stoned = false
      @statues.shift
    end
  end
end


class Person
  attr_accessor :name, :stoned

  def initialize(name)
    @name = name
    @stoned = false
  end

  def stoned?
    @stoned
  end
end


medusa = Medusa.new("Cassie")
victim1 = Person.new("Perseus")
victim2 = Person.new("Bryan")
victim3 = Person.new("Talon")
victim4 = Person.new("Hank")
p medusa.statues
medusa.stare(victim1)
p victim1.stoned?
p medusa.statues
medusa.stare(victim2)
medusa.stare(victim3)
p medusa.statues.count
medusa.stare(victim4)
p victim4.stoned?
p medusa.statues.count
p victim1.name
p victim1.stoned?
p medusa.statues
