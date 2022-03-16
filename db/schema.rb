# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_03_15_172336) do

  create_table "stripe_accounts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "stripe_account_id"
    t.boolean "charges_enabled"
    t.string "country"
    t.string "display_name"
    t.boolean "payouts_enabled"
    t.string "statement_descriptor"
    t.string "stripe_type"
  end

  create_table "stripe_balance_transaction_fee_details", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "stripe_balance_transaction_id"
    t.integer "amount"
    t.string "application"
    t.string "currency"
    t.string "description"
    t.string "stripe_type"
    t.index ["stripe_balance_transaction_id"], name: "index_stripe_balance_transaction"
    t.index ["stripe_balance_transaction_id"], name: "index_stripe_balance_transaction_fee_details"
  end

  create_table "stripe_balance_transactions", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "stripe_balance_transaction_id"
    t.string "stripe_object"
    t.integer "amount"
    t.date "available_on"
    t.datetime "created"
    t.string "currency"
    t.string "description"
    t.integer "exchange_rate"
    t.integer "fee"
    t.integer "net"
    t.string "reporting_category"
    t.string "source"
    t.string "status"
    t.string "stripe_type"
  end

  create_table "stripe_payout_balance_transactions", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "stripe_payout_id"
    t.bigint "stripe_balance_transaction_id"
    t.index ["stripe_balance_transaction_id"], name: "index_stripe_payout_balance_transaction"
    t.index ["stripe_payout_id"], name: "index_stripe_payout_balance_transactions_on_stripe_payout_id"
  end

  create_table "stripe_payouts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "stripe_payout_id"
    t.integer "amount"
    t.date "arrival_date"
    t.boolean "automatic"
    t.string "balance_transaction"
    t.datetime "created"
    t.string "currency"
    t.string "description"
    t.string "destination"
    t.string "failure_balance_transaction"
    t.string "failure_code"
    t.string "failure_message"
    t.boolean "livemode"
    t.json "metadata"
    t.string "stripe_method"
    t.string "original_payout"
    t.string "reversed_by"
    t.string "source_type"
    t.string "statement_descriptor"
    t.string "status"
    t.string "stripe_type"
    t.integer "source_balance"
    t.index ["stripe_payout_id"], name: "index_stripe_payouts_on_stripe_payout_id", unique: true
  end

end
