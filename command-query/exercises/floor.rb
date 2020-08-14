class Floor
  def initialize
    @dirty = true
  end

  def dirty?
    return true if @dirty == true
      "The floor should be dirty."
    return false if @dirty == false
      "The floor should be clean."
  end

  def wash
    @dirty = false
  end
end
