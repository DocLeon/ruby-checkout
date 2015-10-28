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
        expect(price).to eq(50)
      end
    end

    context '1 B in basket' do
      let(:price) {checkout.scan 'B'}
      it 'returns 30' do
        expect(price).to eq(30)
      end
    end

    context '1 C in basket' do
      let(:price) {checkout.scan 'C'}
      it 'returns 20'do
        expect(price).to eq(20)
      end
    end

    context '1 D in basket' do
      let(:price) {checkout.scan 'D'}
      it 'returns 15' do
        expect(price).to eq(15)
      end
    end
  end
end
