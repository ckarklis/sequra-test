class Order < ApplicationRecord
  belongs_to :merchant
  belongs_to :shopper

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
