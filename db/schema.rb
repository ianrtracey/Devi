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

ActiveRecord::Schema.define(version: 20151123004054) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "hackers", force: :cascade do |t|
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.boolean  "is_over_18"
    t.string   "gender"
    t.string   "school"
    t.string   "major"
    t.string   "graduation_date"
    t.text     "learn",                        default: [],              array: true
    t.text     "experience",                   default: [],              array: true
    t.string   "num_of_hackathons"
    t.boolean  "returner"
    t.string   "github"
    t.string   "linkedin"
    t.string   "resume"
    t.string   "dietary_restrictions"
    t.boolean  "require_travel_reimbursement"
    t.string   "emergency_contact_name"
    t.string   "emergency_contact_number"
  end

  create_table "stats", force: :cascade do |t|
    t.integer  "hacker_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "num_of_github_repos"
    t.json     "github_languages"
    t.json     "linkedin_experience"
  end

  add_index "stats", ["hacker_id"], name: "index_stats_on_hacker_id", using: :btree

  create_table "statuses", force: :cascade do |t|
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "status"
    t.integer  "hacker_id"
    t.datetime "invitation_sent_at"
    t.string   "invitation_key"
    t.datetime "decision_made_at"
    t.string   "decision"
  end

  add_index "statuses", ["hacker_id"], name: "index_statuses_on_hacker_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
