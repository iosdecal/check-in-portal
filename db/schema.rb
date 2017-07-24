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

ActiveRecord::Schema.define(version: 20170724000737) do

  create_table "checkins", force: :cascade do |t|
    t.integer "week"
    t.string "user_sid"
    t.string "buddy_sid"
    t.boolean "is_mirror", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["week", "user_sid", "buddy_sid"], name: "index_checkins_on_week_and_user_sid_and_buddy_sid", unique: true
  end

  create_table "switches", force: :cascade do |t|
    t.boolean "can_checkin", default: false
  end

  create_table "users", primary_key: "sid", force: :cascade do |t|
    t.string "type"
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sid"], name: "index_users_on_sid", unique: true
  end

end
