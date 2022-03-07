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

ActiveRecord::Schema.define(version: 2022_03_07_133426) do

  create_table "payouts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "payout_token"
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
    t.string "method"
    t.string "original_payout"
    t.string "reversed_by"
    t.string "source_type"
    t.string "statement_descriptor"
    t.string "status"
    t.string "type"
    t.integer "source_balance"
  end

end
