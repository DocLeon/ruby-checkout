class Checkout
  def scan items
    return 50 if items == 'A'
    return 30 if items == 'B'
    0
  end
end
