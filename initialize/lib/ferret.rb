class Ferret
  attr_writer :name

  def initialize
    @name = nil
  end

  def name
    @name
  end

  def give_name(name)
    @name = name
  end
end
