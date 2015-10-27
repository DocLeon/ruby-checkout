require 'spec_helper'

describe Checkout do
  describe '.scan' do
    it 'returns 0 for no items' do
      checkout = Checkout.new
      price = checkout.scan ''
      expect(price).to eq(0)
    end

    it 'returns 50 when scanning 1 A' do
      checkout = Checkout.new
      price = checkout.scan 'A'
      expect(price).to eq(50)
    end
  end
end
