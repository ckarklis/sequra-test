class CreateDisbursementForOrdersWorker
  include Sidekiq::Worker

  def perform
    Order.completed_without_disbursement.find_each do |order|
      CreateDisbursement.run(order)
    end
  end
end
