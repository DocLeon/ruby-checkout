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

    context '1 item scanned' do
      it 'gets the price of the item scanned' do
          {'A' => 50, 'B' => 30, 'C' => 20, 'D' => 15 }.each do |basket, total_price|
            expect(checkout.scan basket).to eq(total_price)
          end
      end
    end

  end
end
