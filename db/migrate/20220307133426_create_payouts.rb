class CreatePayouts < ActiveRecord::Migration[5.2]
  def change
    enable_extension 'uuid-ossp'

    create_table :payouts do |t|
      t.string :payout_token
      t.integer :amount
      t.date :arrival_date
      t.boolean :automatic
      t.string :balance_transaction # should be uuid
      t.datetime :created
      t.string :currency
      t.string :description
      t.string :destination
      t.string :failure_balance_transaction # should be uuid
      t.string :failure_code
      t.string :failure_message
      t.boolean :livemode
      t.json :metadata
      t.string :method
      t.string :original_payout # should be uuid
      t.string :reversed_by # should be uuid
      t.string :source_type
      t.string :statement_descriptor
      t.string :status
      t.string :type
      t.integer :source_balance
    end
  end
end
