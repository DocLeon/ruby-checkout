require_relative 'item_a'
require_relative 'item_b'
require_relative 'item_c'
require_relative 'item_d'
require_relative 'no_item'

class Catalogue
  def initialize
    @catalogue = {
      '' => NoItem.new,
      'A' => ItemA.new,
      'B' => ItemB.new,
      'C' => ItemC.new,
      'D' => ItemD.new,
    }
  end

  def [] sku
    @catalogue[sku]
  end
end
