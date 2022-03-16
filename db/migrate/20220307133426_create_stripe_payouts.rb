class CreateStripePayouts < ActiveRecord::Migration[5.2]
  def change
    create_table :stripe_payouts do |t|
      t.string :stripe_payout_id
      t.index :stripe_payout_id, unique: true
      t.integer :amount
      t.date :arrival_date
      t.boolean :automatic
      t.string :balance_transaction
      t.datetime :created
      t.string :currency
      t.string :description
      t.string :destination
      t.string :failure_balance_transaction
      t.string :failure_code
      t.string :failure_message
      t.boolean :livemode
      t.json :metadata
      t.string :stripe_method
      t.string :original_payout
      t.string :reversed_by
      t.string :source_type
      t.string :statement_descriptor
      t.string :status
      t.string :stripe_type
      t.integer :source_balance
    end
  end
end
