require 'rails_helper'

module Api
  module V1
    RSpec.describe DisbursementsController, type: :request do
      setup do
        order_a = create(:order)
        order_b = create(:order)
        @disbursement_a = create(:disbursement, order: order_a, merchant: order_a.merchant, disbursed_at: Date.new(2022,10,01))
        @disbursement_b = create(:disbursement, order: order_b, merchant: order_b.merchant, disbursed_at: Date.new(2020,05,01))
      end

      describe 'GET #index' do
        it 'returns all disbursements' do
          get v1_disbursements_path

          parsed_body = JSON.parse(response.body)

          expect(response.code).to eq '200'
          expect(parsed_body.count).to eq 2
        end

        it 'returns disbursements from specific merchant' do
          get v1_disbursements_path(from_merchant: @disbursement_a.merchant.id)

          parsed_body = JSON.parse(response.body)

          expect(response.code).to eq '200'
          expect(parsed_body.count).to eq 1
        end

        it 'returns disbursements from specific week' do
          disbursement_week_date = @disbursement_b.disbursed_at - 2.days
          get v1_disbursements_path(from_week: disbursement_week_date.to_s)

          parsed_body = JSON.parse(response.body)

          expect(response.code).to eq '200'
          expect(parsed_body.count).to eq 1
        end
      end
    end
  end
end