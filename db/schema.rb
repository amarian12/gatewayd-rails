# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140714023829) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ripple_addresses", force: true do |t|
    t.boolean  "managed"
    t.string   "address"
    t.string   "type"
    t.integer  "tag"
    t.string   "uid"
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ripple_transactions", force: true do |t|
    t.string   "to_address"
    t.string   "from_address"
    t.decimal  "to_amount"
    t.decimal  "from_amount"
    t.string   "to_currency"
    t.string   "from_currency"
    t.string   "to_issuer"
    t.string   "from_issuer"
    t.string   "transaction_state"
    t.string   "transaction_hash"
    t.string   "state"
    t.string   "uid"
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
