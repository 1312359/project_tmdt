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

ActiveRecord::Schema.define(version: 20180109185020) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "lands", force: :cascade do |t|
    t.string "description"
    t.string "project_name"
    t.string "investor"
    t.string "min_price"
    t.string "max_price"
    t.string "bid_price"
    t.string "ward"
    t.string "district"
    t.string "state_city"
    t.string "area"
    t.text "images", default: [], array: true
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.integer "willwin"
    t.string "status"
    t.index ["user_id"], name: "index_lands_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "address"
    t.string "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.string "country"
  end

  add_foreign_key "lands", "users", column: "willwin"
end
