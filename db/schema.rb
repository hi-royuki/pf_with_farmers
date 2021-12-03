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

ActiveRecord::Schema.define(version: 2021_12_03_155756) do

  create_table "books", force: :cascade do |t|
    t.text "title"
    t.integer "farmer_user_id"
    t.integer "general_user_id"
    t.string "image_id"
    t.text "introduction"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.text "comment"
    t.integer "farmer_user_id"
    t.integer "general_user_id"
    t.integer "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.integer "farmer_user_id"
    t.text "event_date"
    t.string "title"
    t.string "event_image_id"
    t.text "introduction"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "farmer_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "profile_image_id"
    t.boolean "is_active", default: true, null: false
    t.index ["email"], name: "index_farmer_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_farmer_users_on_reset_password_token", unique: true
  end

  create_table "general_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "profile_image_id"
    t.boolean "is_active", default: true, null: false
    t.index ["email"], name: "index_general_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_general_users_on_reset_password_token", unique: true
  end

  create_table "joins", force: :cascade do |t|
    t.integer "farmer_user_id"
    t.integer "general_user_id"
    t.integer "event_id"
    t.string "email"
    t.string "phone"
    t.integer "people"
    t.string "name"
    t.text "memo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "post_comments", force: :cascade do |t|
    t.text "comment"
    t.integer "farmer_user_id"
    t.integer "general_user_id"
    t.integer "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.integer "farmer_user_id"
    t.text "title"
    t.string "image_id"
    t.text "introduction"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
