class Checkout
  def scan items
    catalogue = {
      '' => NoItem.new,
      'A' => ItemA.new,
      'B' => ItemB.new,
      'C' => ItemC.new,
      'D' => ItemD.new
    }
    return catalogue[items].price
  end
end

class NoItem
  def price
    0
  end
end

class ItemA
  def price
    50
  end
end

class ItemB
  def price
    30
  end
end

class ItemC
  def price
    20
  end
end

class ItemD
  def price
    15
  end
end
