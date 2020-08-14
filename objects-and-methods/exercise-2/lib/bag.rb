class Bag

  def initialize
    @candies = []
    @taken = []
  end

  def empty?
    @candies.empty?
  end

  def count
    @candies.length
  end

  def candies
    @candies
  end

  def << (candy)
    @candies << candy
  end

  def grab(candy)
    @candies.shift
  end

  def take(n)
    n.times { @taken << @candies.slice!(0) }
    @taken
    require "pry"; binding.pry
  end

  def contains?(type)
    @candies.any? do |candy|
      candy.type == type
    end
  end
end

bag = Bag.new
bag << Candy.new("Candy", 13)
p bag.candies
