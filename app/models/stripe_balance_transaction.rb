class StripeBalanceTransaction < ApplicationRecord
    has_many :stripe_payout_balance_transactions
    has_one :stripe_payout, through: :stripe_payout_balance_transactions
    has_many :stripe_balance_transaction_fee_detail
    
    def type
        stripe_type
    end
end
  