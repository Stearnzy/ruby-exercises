class Direwolf
  attr_accessor :name, :home, :size, :starks_to_protect

  def initialize(name, home = "Beyond the Wall", size = "Massive")
    @name = name
    @home = home
    @size = size
    @starks_to_protect = []
    @hunts = true
  end

  def protects(stark)
    if self.home == stark.location && self.starks_to_protect.count < 2
      @starks_to_protect << stark
      stark.safe = true
    end
  end

  def hunts_white_walkers?
    if @starks_to_protect.count == 0
      @hunts = true
    elsif @starks_to_protect.count >= 1
      @hunts = false
    end
  end

  def leaves(stark)
    if stark.safe == true
      @starks_to_protect.shift
      stark.safe = false
    elsif stark.safe == false
      return stark
    end
  end
end


class Stark
  attr_accessor :name, :location, :house_words, :safe

  def initialize(name, location = "Winterfell")
    @name = name
    @location = location
    @house_words = house_words
    @safe = false
  end

  def house_words
    return "Winter is Coming" if @safe == false
    return "The North Remembers" if @safe == true
  end

  def safe?
    @safe
  end
end




summer_wolf = Direwolf.new('Summer', "Winterfell")
lady_wolf = Direwolf.new('Lady', "Winterfell")
sansa_stark = Stark.new('Sansa')
arya_stark = Stark.new('Arya')
rickon_stark = Stark.new('Rickon')

summer_wolf.protects(arya_stark)
lady_wolf.protects(sansa_stark)
summer_wolf.leaves(arya_stark)

expected = lady_wolf.leaves(rickon_stark)
