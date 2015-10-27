require 'spec_helper'

describe Checkout do
  describe '.scan' do
    it 'returns 0 for no items' do
      checkout = Checkout.new
      price = checkout.scan ''
      price.should == 0
    end
  end
end
