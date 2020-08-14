class Unicorn
  attr_accessor :name
  def initialize(name, color = "white")
    @name = name
    @color = color
  end

  def color
    @color
  end

  def white?
    return true if color == "white"
    return false if color != "white"
  end

  def say(phrase)
    "**;* #{phrase} **;*"
  end
end
