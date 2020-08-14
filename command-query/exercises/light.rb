class Light
  def initialize
    @on = false
  end

  def on?
    return false if @on == false
    return true if @on == true
  end

  def turn_on
    @on = true
  end
end
