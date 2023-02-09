require 'rails_helper'

RSpec.describe Merchant, type: :model do
  let(:merchant_params) do
    {
      name: 'Von and Sons',
      email: 'info@von-and-sons.com',
      cif: 'B611111115'
    }
  end

  context 'create merchant' do
    it 'save if valid params' do
      merchant = described_class.new(merchant_params)

      expect{ merchant.save }.to change(Merchant, :count).by(1)
      expect(Merchant.find_by(email: 'info@von-and-sons.com').name).to eq('Von and Sons')
    end
  end
end
