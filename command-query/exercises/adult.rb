class Adult
  def initialize
    @beverages = 0
  end

  def consume_an_alcoholic_beverage
    @beverages += 1
  end

  def sober?
    if @beverages == 0
      return true
      "Adult should really be sober right now."
    elsif @beverages == 1
      return true
      "Still sober."
    elsif @beverages == 2
      return true
      "Not drunk yet."
    elsif @beverages == 3
      return false
      "Yeah, OK. The adult is drunk."
    elsif @beverages >= 4
      return false
      "The adult doesn't get more sober from drinking more."
    else
      nil
    end
  end
end
