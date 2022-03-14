class CreateStripePayoutBalanceTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :stripe_payout_balance_transactions do |t|
      t.references :stripe_payout
      t.references :stripe_balance_transaction, index: { name: :index_stripe_payout_balance_transaction }
    end
  end
end