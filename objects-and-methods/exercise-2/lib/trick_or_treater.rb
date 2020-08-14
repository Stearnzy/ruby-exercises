class TrickOrTreater
  attr_accessor :sugar_level

  def initialize(costume)
    @costume = costume
    @bag = Bag.new
    @sugar_level = 0
  end

  def dressed_up_as
    @costume.style
  end

  def has_candy?
    return false if @bag.empty? == true
    return true if @bag.empty? == false
  end

  def bag
    @bag
  end

  def candy_count
    bag.count
  end

  def eat
    bag.candies.shift && 
  end

  def sugar_level
    @sugar_level
  end
end


trick_or_treater = TrickOrTreater.new(Costume.new("Borg"))
trick_or_treater.bag << Candy.new("Candy Canes", 88)
p trick_or_treater.bag.candies
