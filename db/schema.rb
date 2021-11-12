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

ActiveRecord::Schema.define(version: 2021_11_12_105219) do

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "areas", force: :cascade do |t|
    t.string "area_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "building_comments", force: :cascade do |t|
    t.string "building_id"
    t.string "user_id"
    t.text "comment"
    t.string "image_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "building_favorites", force: :cascade do |t|
    t.integer "user_id"
    t.integer "building_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "building_reviews", force: :cascade do |t|
    t.integer "building_id"
    t.integer "user_id"
    t.string "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "buildings", force: :cascade do |t|
    t.string "area_id"
    t.string "building_name"
    t.string "introduction"
    t.string "image_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string "user_id"
    t.text "comment"
    t.string "image_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "favorites", force: :cascade do |t|
    t.integer "user_id"
    t.integer "toilet_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shop_comments", force: :cascade do |t|
    t.string "shop_id"
    t.string "user_id"
    t.text "comment"
    t.string "image_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shop_favorites", force: :cascade do |t|
    t.integer "user_id"
    t.integer "shop_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shop_reviews", force: :cascade do |t|
    t.integer "shop_id"
    t.integer "user_id"
    t.string "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shops", force: :cascade do |t|
    t.string "area_id"
    t.string "shop_name"
    t.string "introduction"
    t.string "image_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "toilet_comments", force: :cascade do |t|
    t.string "toilet_id"
    t.string "user_id"
    t.text "comment"
    t.string "image_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "toilet_reviews", force: :cascade do |t|
    t.integer "toilet_id"
    t.integer "user_id"
    t.string "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "toilets", force: :cascade do |t|
    t.string "toilet_name"
    t.string "introduction"
    t.string "image_id"
    t.string "area_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
