class StripePayout < ApplicationRecord
    has_many :stripe_payout_balance_transactions
    has_many :stripe_balance_transaction, through: :stripe_payout_balance_transactions

    
    def stripe_object
        'payout'
    end

    def self.stripe_id
        'stripe_payout_id'
    end
end
  