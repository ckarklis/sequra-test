FactoryBot.define do
  factory :order do
    amount { BigDecimal('550.00') }
    shopper  { create(:shopper) }
    merchant { create(:merchant) }
    completed_at { nil }
    external_id { rand(1..1000) }
  end
end
