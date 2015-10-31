require_relative 'checkout/catalogue'

class Checkout
  def initialize (catalogue = Catalogue.new)
    @catalogue = Catalogue.new
  end

  def scan items
    price = 0
    items.each_char {|item| price += @catalogue[item].price}
    price
  end
end
