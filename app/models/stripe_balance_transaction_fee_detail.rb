class StripeBalanceTransactionFeeDetail < ApplicationRecord
    belongs_to :stripe_balance_transaction
    
    def type
        stripe_type
    end
end
  