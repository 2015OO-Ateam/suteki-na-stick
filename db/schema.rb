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

ActiveRecord::Schema.define(version: 20150711120631) do

  create_table "resources", force: :cascade do |t|
    t.integer  "new_arrival",       limit: 1, default: 0, null: false
    t.integer  "return_status",     limit: 2, default: 0, null: false
    t.integer  "borrow_status",     limit: 1, default: 0, null: false
    t.integer  "use_permission",    limit: 1, default: 0, null: false
    t.integer  "necessary_of_scan", limit: 1, default: 0, null: false
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.string   "name"
    t.string   "machine_name"
    t.string   "pc_type"
    t.string   "cpu"
    t.integer  "memory"
    t.integer  "hdd"
    t.datetime "scan_date"
    t.datetime "acquisition_date"
    t.integer  "limit"
    t.string   "type"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "student_number"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "title"
    t.integer  "room"
    t.integer  "status"
  end

  add_index "users", ["first_name"], name: "index_users_on_first_name"
  add_index "users", ["last_name"], name: "index_users_on_last_name"
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["room"], name: "index_users_on_room"
  add_index "users", ["status"], name: "index_users_on_status"
  add_index "users", ["student_number"], name: "index_users_on_student_number", unique: true
  add_index "users", ["title"], name: "index_users_on_title"

end
