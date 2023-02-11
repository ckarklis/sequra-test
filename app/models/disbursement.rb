class Disbursement < ApplicationRecord
  belongs_to :order
  belongs_to :merchant

  scope :from_week, -> (date) { where(disbursed_at: date.to_date.beginning_of_week..date.to_date.end_of_week) }
  scope :from_merchant, -> (merchant_id) { where(merchant_id: merchant_id) }
end
