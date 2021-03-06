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

ActiveRecord::Schema.define(version: 20131026222805) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "climbers", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "skill"
    t.string   "username"
  end

  add_index "climbers", ["email"], name: "index_climbers_on_email", unique: true, using: :btree
  add_index "climbers", ["reset_password_token"], name: "index_climbers_on_reset_password_token", unique: true, using: :btree

  create_table "problems", force: true do |t|
    t.string   "rating"
    t.string   "color"
    t.integer  "rockgym_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "style"
    t.string   "name",                default: "no name!"
    t.integer  "climber_id"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  add_index "problems", ["climber_id"], name: "index_problems_on_climber_id", using: :btree

  create_table "reviews", force: true do |t|
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "problem_id"
    t.integer  "climber_id"
    t.integer  "rating"
    t.string   "rating_string"
  end

  create_table "rockgyms", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "url"
  end

end
