class Wizard
  attr_accessor :name

  def initialize(name, bearded: true)
    @name = name
    @bearded = bearded
    @casting_count = 0
  end

  def bearded?
    @bearded
  end

  def incantation(spell)
    "sudo #{spell}"
  end

  def rested?
    return true if @casting_count < 3
    return false if @casting_count >= 3
  end

  def cast
    @casting_count += 1
    "MAGIC MISSILE!"
  end
end


gandalf = Wizard.new("Gandalf")
p gandalf.rested?
p gandalf.cast
p gandalf.cast
p gandalf.rested?
p gandalf.cast
p gandalf.rested?
