require 'rails_helper'

RSpec.describe CreateDisbursement do
  context '.run' do
    it 'creates disbursement for order with 1% fee' do
      order = create(:order, completed_at: DateTime.new(2023,02,10), amount: BigDecimal('20'))
      disbursement_amount = order.amount * BigDecimal(order.disbursement_fee.to_s)

      expect { described_class.run(order) }.to change(Disbursement, :count).by(1)
      expect(order.disbursement.amount).to eq(disbursement_amount)
    end

    it 'creates disbursement for order with 0.95% fee' do
      order = create(:order, completed_at: DateTime.new(2023,02,10), amount: BigDecimal('150'))
      disbursement_amount = order.amount * BigDecimal(order.disbursement_fee.to_s)

      expect { described_class.run(order) }.to change(Disbursement, :count).by(1)
      expect(order.disbursement.amount).to eq(disbursement_amount)
    end

    it 'creates disbursement for order with 0.85% fee' do
      order = create(:order, completed_at: DateTime.new(2023,02,10), amount: BigDecimal('650'))
      disbursement_amount = order.amount * BigDecimal(order.disbursement_fee.to_s)

      expect { described_class.run(order) }.to change(Disbursement, :count).by(1)
      expect(order.disbursement.amount).to eq(disbursement_amount)
    end
  end
end
