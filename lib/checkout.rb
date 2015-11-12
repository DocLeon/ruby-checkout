require_relative 'checkout/catalogue'

class Checkout
  def initialize(catalogue = Catalogue.new)
    @catalogue = catalogue
  end

  def scan(items)
    items.split('').reduce(0) do |price, item|
      price + @catalogue[item].price
    end
  end
end
