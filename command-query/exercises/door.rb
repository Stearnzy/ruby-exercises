class Door
  def initialize
    @locked = true
  end

  def locked?
    return true if @locked == true
      "The door should be locked."
    return false if @locked == false
      "The door should now be unlocked."
  end

  def unlock
    @locked = false
  end
end
