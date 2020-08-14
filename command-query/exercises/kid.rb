class Kid
  attr_reader :grams_of_sugar_eaten

  def initialize
    @grams_of_sugar_eaten = 0
  end

  def eat_candy
    @grams_of_sugar_eaten += 5
  end

  def hyperactive?
    return false if @grams_of_sugar_eaten < 60
    return true if @grams_of_sugar_eaten >= 60
  end
end
