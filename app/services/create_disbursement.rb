class CreateDisbursement
  def self.run(order)
    Disbursement.create(
      order: order,
      merchant: order.merchant,
      amount: order.amount * BigDecimal(order.disbursement_fee.to_s),
      disbursed_at: order.completed_at.beginning_of_week
    )
  end
end
