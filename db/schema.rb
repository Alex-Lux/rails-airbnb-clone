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

ActiveRecord::Schema.define(version: 20170815100127) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "pethome_id"
    t.date "starting_date"
    t.date "ending_date"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pethome_id"], name: "index_bookings_on_pethome_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "pethome_reviews", force: :cascade do |t|
    t.bigint "booking_id"
    t.integer "rating"
    t.string "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["booking_id"], name: "index_pethome_reviews_on_booking_id"
  end

  create_table "pethomes", force: :cascade do |t|
    t.string "address"
    t.string "bedrooms"
    t.string "guests"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.string "picture"
    t.text "observations"
    t.index ["user_id"], name: "index_pethomes_on_user_id"
  end

  create_table "pets", force: :cascade do |t|
    t.bigint "pethome_id"
    t.string "breed"
    t.string "name"
    t.string "weight"
    t.string "size"
    t.string "color"
    t.string "picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "type"
    t.text "observations"
    t.index ["pethome_id"], name: "index_pets_on_pethome_id"
  end

  create_table "petsitter_reviews", force: :cascade do |t|
    t.bigint "booking_id"
    t.integer "rating"
    t.string "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["booking_id"], name: "index_petsitter_reviews_on_booking_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "picture"
    t.string "first_name"
    t.string "last_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bookings", "pethomes"
  add_foreign_key "bookings", "users"
  add_foreign_key "pethome_reviews", "bookings"
  add_foreign_key "pethomes", "users"
  add_foreign_key "pets", "pethomes"
  add_foreign_key "petsitter_reviews", "bookings"
end
