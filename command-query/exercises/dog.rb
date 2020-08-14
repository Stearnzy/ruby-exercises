class Dog
  def initialize
    @hungry = true
  end

  def hungry?
    return true if @hungry == true
      "Dog should be hungry."
    return false if @hungry == false
      "Dog ate. Not hungry."
  end

  def eat
    @hungry = false
  end
end
