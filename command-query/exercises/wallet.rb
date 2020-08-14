class Wallet
  attr_accessor :cents, :coins
  def initialize
    @cents = 0
    @coins = []
  end

  def << (currency)
    @coins << currency
    @cents += 1 if currency == :penny
    @cents += 5 if currency == :nickel
    @cents += 10 if currency == :dime
    @cents += 25 if currency == :quarter
    @cents += 100 if currency == :dollar
  end

  def take(*coins)
    coins.each do |coin|
      if @coins.include?(coin)
        @cents -= 1 if coin == :penny
        @cents -= 5 if coin == :nickel
        @cents -= 10 if coin == :dime
        @cents -= 25 if coin == :quarter
        @cents -= 100 if coin == :dollar
      end
    end
  end

end



wallet = Wallet.new
4.times { wallet << :quarter }
3.times { wallet << :dollar }
2.times { wallet << :nickel }
p wallet.coins
p wallet.cents
wallet.take(:nickel, :quarter)
p wallet.coins
p wallet.cents
wallet.take(:penny)
p wallet.cents
