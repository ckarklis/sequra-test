module Api::V1
  class DisbursementsController < ActionController::API
    has_scope :from_merchant
    has_scope :from_week
  
    def index
      disbursements = apply_scopes(Disbursement).all

      render json: disbursements
    end
  end
end
