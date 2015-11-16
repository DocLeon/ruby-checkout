require_relative 'item'
require_relative 'no_item'

class Catalogue
  def initialize
    @catalogue = {
      '' => NoItem.new,
      'A' => Item.with_price_of(50),
      'B' => Item.with_price_of(30),
      'C' => Item.with_price_of(20),
      'D' => Item.with_price_of(15)
    }
  end

  def [](sku)
    @catalogue.fetch(sku)
  end
end
