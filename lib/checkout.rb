require_relative 'checkout/catalogue'

class Checkout
  def initialize (catalogue = Catalogue.new)
    @catalogue = Catalogue.new
  end

  def scan items
    return @catalogue[items].price
  end
end
