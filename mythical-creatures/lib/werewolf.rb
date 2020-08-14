class Victim
  attr_accessor :status

  def initialize
    @status = :alive
  end
end



class Werewolf
  attr_accessor :name, :location

  def initialize(name, location = "London")
    @name = name
    @location = location
    @human = true
    @hungry = false
  end

  def human?
    @human
  end

  def change!
    @human ^= true
    @hungry^= true
  end

  def wolf?
    return true if @human == false
    return false if @human == true
  end

  def hungry?
    @hungry
  end

  def eat(victim)
    if @human == false
      victim.status = :dead
      @hungry = false
    end
  end
end

werewolf = Werewolf.new("Ozz", "Sunnydale")
victim = Victim.new
werewolf.eat(victim)
werewolf.change!
werewolf.eat(victim)
p victim.status
