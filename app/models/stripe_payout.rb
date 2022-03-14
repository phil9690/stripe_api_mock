class StripePayout < ApplicationRecord
    has_many :stripe_payout_balance_transactions
    has_many :stripe_balance_transaction, through: :stripe_payout_balance_transactions

    def object
        'payout'
    end
    
    def type
        stripe_type
    end
end
  