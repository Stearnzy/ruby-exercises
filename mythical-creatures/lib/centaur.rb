class Centaur
  attr_accessor :name, :breed

  def initialize(name, breed)
    @name = name
    @breed = breed
    @cranky = false
    @standing = true
    @action_count = 0
    @laying = false
    @sick = false
  end

  def shoot
    if @laying == true
      "NO!"
    elsif @action_count < 3
      @action_count += 1
      "Twang!!!"
    elsif @action_count >= 3
      "NO!"
    end
  end

  def run
    if @laying == true
      "NO!"
    elsif @action_count < 3
      @action_count += 1
      "Clop clop clop clop!!!"
    elsif @action_count >= 3
      "NO!"
    end
  end

  def cranky?
    return false if @action_count < 3
    return true if @action_count >= 3
  end

  def standing?
    @standing
  end

  def sleep
    if @standing == true
      "NO!"
    elsif @standing == false
      @action_count = 0
    end
  end

  def lay_down
    @standing = false
    @laying = true
  end

  def stand_up
    @standing = true
    @laying = false
  end

  def laying?
    @laying
  end

  def rested?
    return true if @action_count == 0
    return false if @action_count > 0
  end

  def drink_potion
    if @action_count == 0
      @sick = true
    elsif @laying == true
      "NO!"
    elsif @standing == true && @action_count > 0
      "Glug"
      @action_count = 0
    end
  end

  def sick?
    @sick
  end
end


centaur = Centaur.new("Guy", "Palomino")
p centaur.shoot
p centaur.shoot
p centaur.shoot
p centaur.shoot
