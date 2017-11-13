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

ActiveRecord::Schema.define(version: 20171113143311) do

  create_table "topic_of_interests", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "topic"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "topic_of_interests_users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "user_id"
    t.bigint "topic_of_interest_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["topic_of_interest_id"], name: "index_topic_of_interests_users_on_topic_of_interest_id"
    t.index ["user_id"], name: "index_topic_of_interests_users_on_user_id"
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "phone"
    t.string "email"
    t.string "password_digest"
    t.datetime "last_sign_in_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "token"
  end

  add_foreign_key "topic_of_interests_users", "topic_of_interests"
  add_foreign_key "topic_of_interests_users", "users"
end
