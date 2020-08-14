class Catalogue
  def initialize
    @inventory = []
  end

  def << (product)
    @inventory << product
  end

  def cheapest
    @inventory.sort_by do |product|
      product.price
    end
  end
end
