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

ActiveRecord::Schema.define(version: 20171016070423) do

  create_table "broadcast_rooms", force: :cascade do |t|
    t.string "title"
    t.integer "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_broadcast_rooms_on_event_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.string "venue"
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "thumbnail"
    t.index ["user_id"], name: "index_events_on_user_id"
  end

  create_table "requests", force: :cascade do |t|
    t.integer "translator_id"
    t.integer "broadcast_room_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "status", default: "submitted"
    t.index ["broadcast_room_id"], name: "index_requests_on_broadcast_room_id"
    t.index ["translator_id"], name: "index_requests_on_translator_id"
    t.index ["user_id"], name: "index_requests_on_user_id"
  end

  create_table "statuses", force: :cascade do |t|
    t.integer "translator_id"
    t.integer "broadcast_room_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["broadcast_room_id"], name: "index_statuses_on_broadcast_room_id"
    t.index ["translator_id"], name: "index_statuses_on_translator_id"
    t.index ["user_id"], name: "index_statuses_on_user_id"
  end

  create_table "titles", force: :cascade do |t|
    t.string "venue"
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_titles_on_user_id"
  end

  create_table "translators", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
    t.string "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "name"
    t.string "role", default: "Admin"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
