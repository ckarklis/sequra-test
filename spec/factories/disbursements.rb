FactoryBot.define do
  factory :disbursement do
    amount { "9.99" }
    order { nil }
    disbursed_at { nil }
  end
end
