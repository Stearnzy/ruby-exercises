class Pirate
  attr_accessor :name, :job

  def initialize(name, job = "Scallywag")
    @name = name
    @job = job
    @cursed = false
    @acts_count = 0
    @booty = 0
  end

  def cursed?
    if @acts_count >= 3
      @cursed = true
    else
      @cursed
    end
  end

  def commit_heinous_act
    @acts_count += 1
  end

  def booty
    @booty
  end

  def rob_ship
    @booty += 100
  end
end

pirate = Pirate.new("Greg")
p pirate.booty
pirate.rob_ship
p pirate.booty
