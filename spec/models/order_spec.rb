require 'rails_helper'

RSpec.describe Order, type: :model do
  context 'completed_without_disbursement scope' do
    it 'returns only completed orders with no disbursement' do
      create(:order, completed_at: DateTime.new(2020,11,1))
      create(:order, completed_at: DateTime.new(2020,11,1))
      order = create(:order)
      disbursement = create(:disbursement, order: order, merchant: order.merchant)

      expect(Order.completed_without_disbursement.count).to eq(2)
    end
  end
end
