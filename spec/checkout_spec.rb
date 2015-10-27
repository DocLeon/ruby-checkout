require 'spec_helper'

describe Checkout do
  before (:each) do
    @checkout = Checkout.new
  end
  describe '.scan' do
    it 'returns 0 for no items' do
      price = @checkout.scan ''
      expect(price).to eq(0)
    end

    it 'returns 50 when scanning 1 A' do
      price = @checkout.scan 'A'
      expect(price).to eq(50)
    end
  end
end
