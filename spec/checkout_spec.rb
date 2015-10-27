require 'spec_helper'

describe Checkout do
  describe '.scan' do
    it 'returns 0 for no items' do
      checkout = Checkout.new
      price = checkout.scan ''
      price.should == 0
    end

    it 'returns 50 when scanning 1 A' do
      checkout = Checkout.new
      price = checkout.scan 'A'
      price.should == 50
    end
  end
end
