class CreateStripeAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :stripe_accounts do |t|
      t.string :stripe_account_id
      t.boolean :charges_enabled
      t.string :country
      t.string :display_name
      t.boolean :payouts_enabled
      t.string :statement_descriptor
      t.string :stripe_type
    end
  end
end
