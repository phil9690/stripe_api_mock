class CreateStripeBalanceTransactionFeeDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :stripe_balance_transaction_fee_details do |t|
      t.references :stripe_balance_transaction, index: { name: :index_stripe_balance_transaction_fee_details }
      t.integer :amount
      t.string :application
      t.string :currency
      t.string :description
      t.string :stripe_type
      t.references :stripe_balance_transaction, index: { name: :index_stripe_balance_transaction }
    end
  end
end
