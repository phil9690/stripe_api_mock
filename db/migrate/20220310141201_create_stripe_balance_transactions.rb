class CreateStripeBalanceTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :stripe_balance_transactions do |t|
      t.string :stripe_balance_transaction_id
      t.string :stripe_object
      t.integer :amount
      t.date :available_on
      t.datetime :created
      t.string :currency
      t.string :description
      t.integer :exchange_rate
      t.integer :fee
      t.integer :net
      t.string :reporting_category
      t.string :source
      t.string :status
      t.string :stripe_type
    end
  end
end