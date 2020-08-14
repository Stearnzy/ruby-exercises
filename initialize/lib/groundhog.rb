class Groundhog
  attr_writer :name

  def initialize(name)
    @name = name
  end

  def name
    @name
  end
end

gabby = Groundhog.new("Gabby")
gabby.name
gabby.name = "Gary"
