class StripePayoutBalanceTransaction < ApplicationRecord
    belongs_to :stripe_payout
    belongs_to :stripe_balance_transaction
end