class Order < ApplicationRecord
  belongs_to :merchant
  belongs_to :shopper
  has_one :disbursement

  scope :completed_without_disbursement, -> { joins("LEFT OUTER JOIN disbursements ON disbursements.order_id = orders.id").where("disbursements.order_id IS NULL").where.not(completed_at: nil) }

  def disbursement_fee
    if amount < 50
      0.01
    elsif amount < 300
      0.0095
    else
      0.0085
    end
  end
end
