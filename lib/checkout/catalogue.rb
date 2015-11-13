require_relative 'item'
require_relative 'no_item'

class Catalogue
  def initialize
    @catalogue = {
      '' => NoItem.new,
      'A' => Item.new(50),
      'B' => Item.new(30),
      'C' => Item.new(20),
      'D' => Item.new(15)
    }
  end

  def [](sku)
    @catalogue.fetch(sku)
  end
end
