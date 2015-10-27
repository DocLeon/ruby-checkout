require 'spec_helper'

describe Checkout do

  subject(:checkout) {Checkout.new}

  describe '#scan' do

    context 'no items in basket' do
      let(:price) {checkout.scan ''}
      it 'returns 0' do
        expect(price).to eq(0)
      end
    end

    context '1 A in basket' do
      let(:price) {checkout.scan 'A'}
      it 'returns 50' do
        price = checkout.scan 'A'
        expect(price).to eq(50)
      end
    end
  end
end
