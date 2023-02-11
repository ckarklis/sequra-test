class CreateDisbursement
  def self.run(order)
    Disbursement.create(
      order: order,
      merchant: order.merchant,
      amount: order.amount * BigDecimal(order.disbursement_fee.to_s),
      disbursed_at: calculate_date(order)
    )
  end

  private

  # checks if order was completed in the last 7 days. If not, it calculates the next monday after the order was completed.
  def self.calculate_date(order)
    return Date.today if 7.days.ago <= order.completed_at

    order.completed_at.end_of_week + 1.day
  end
end
