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

ActiveRecord::Schema.define(version: 20160213172543) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "user_would_you_rathers", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "would_you_rather_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "user_would_you_rathers", ["user_id"], name: "index_user_would_you_rathers_on_user_id", using: :btree
  add_index "user_would_you_rathers", ["would_you_rather_id"], name: "index_user_would_you_rathers_on_would_you_rather_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",            null: false
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

  create_table "would_you_rathers", force: :cascade do |t|
    t.text     "option"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "user_would_you_rathers", "users"
  add_foreign_key "user_would_you_rathers", "would_you_rathers"
end
