class Product
  attr_accessor :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end
end


# prod = Product.new("scissors", 8)
# p prod.price
