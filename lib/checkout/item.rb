class Item
  attr_reader :price
  def initialize(price)
    @price = price
  end
  def self.with_price_of(price)
     Item.new(price)
  end
end
