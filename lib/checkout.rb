require_relative 'checkout/item_a'
require_relative 'checkout/item_b'
require_relative 'checkout/item_c'
require_relative 'checkout/item_d'
require_relative 'checkout/no_item'

class Catalogue
  def initialize
    @catalogue = {
      '' => NoItem.new,
      'A' => ItemA.new,
      'B' => ItemB.new,
      'C' => ItemC.new,
      'D' => ItemD.new
    }
  end

  def [] sku
    @catalogue[sku]
  end
end

class Checkout
  def initialize (catalogue = Catalogue.new)
    @catalogue = Catalogue.new
  end
  def scan items
    catalogue = {
      '' => NoItem.new,
      'A' => ItemA.new,
      'B' => ItemB.new,
      'C' => ItemC.new,
      'D' => ItemD.new
    }
    return @catalogue[items].price
  end
end
