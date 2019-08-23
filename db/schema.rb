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

ActiveRecord::Schema.define(version: 2019_08_23_170421) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "businesses", force: :cascade do |t|
    t.string "name"
    t.string "business_catagory"
    t.text "text_body"
    t.bigint "locations_id"
    t.index ["locations_id"], name: "index_businesses_on_locations_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "city"
    t.string "state"
  end

  create_table "table_locations", force: :cascade do |t|
    t.string "city"
    t.string "state"
  end

  add_foreign_key "businesses", "locations", column: "locations_id"
end
