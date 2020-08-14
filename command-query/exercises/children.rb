class Children
  def initialize
    @children = []
  end

  def << (child)
    @children << child
  end

  def eldest
  end
end


children = Children.new
children << Child.new("Sarah", 5)
p children.children
