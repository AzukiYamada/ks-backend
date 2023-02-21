# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_02_12_035127) do
  create_table "holidays", charset: "utf8", force: :cascade do |t|
    t.string "value"
    t.string "label"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "restaurant_holidays", charset: "utf8", force: :cascade do |t|
    t.bigint "restaurant_id"
    t.bigint "holiday_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["holiday_id"], name: "index_restaurant_holidays_on_holiday_id"
    t.index ["restaurant_id"], name: "index_restaurant_holidays_on_restaurant_id"
  end

  create_table "restaurants", charset: "utf8", force: :cascade do |t|
    t.string "name", null: false
    t.text "description"
    t.integer "price"
    t.text "thumbnail_url", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", charset: "utf8", force: :cascade do |t|
    t.text "content"
    t.string "user_name"
    t.bigint "restaurant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["restaurant_id"], name: "index_reviews_on_restaurant_id"
  end

  add_foreign_key "restaurant_holidays", "holidays"
  add_foreign_key "restaurant_holidays", "restaurants"
  add_foreign_key "reviews", "restaurants"
end
