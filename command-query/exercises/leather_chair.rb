class LeatherChair
  attr_accessor :exposed

  def initialize
    @exposed = false
  end

  def expose_to_sunlight
    @exposed = true
  end

  def faded?
    return true if @exposed == true
    return false if @exposed == false
  end

end
