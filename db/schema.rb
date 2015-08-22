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

ActiveRecord::Schema.define(version: 20150821175210) do

  create_table "activities", force: :cascade do |t|
    t.integer  "trackable_id"
    t.string   "trackable_type"
    t.integer  "owner_id"
    t.string   "owner_type"
    t.string   "key"
    t.text     "parameters"
    t.integer  "recipient_id"
    t.string   "recipient_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "activities", ["owner_id", "owner_type"], name: "index_activities_on_owner_id_and_owner_type"
  add_index "activities", ["recipient_id", "recipient_type"], name: "index_activities_on_recipient_id_and_recipient_type"
  add_index "activities", ["trackable_id", "trackable_type"], name: "index_activities_on_trackable_id_and_trackable_type"

  create_table "bids", force: :cascade do |t|
    t.integer  "bid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.integer  "project_id"
  end

  add_index "bids", ["project_id"], name: "index_bids_on_project_id"
  add_index "bids", ["user_id"], name: "index_bids_on_user_id"

  create_table "comments", force: :cascade do |t|
    t.text     "body"
    t.integer  "user_id"
    t.integer  "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "comments", ["project_id"], name: "index_comments_on_project_id"
  add_index "comments", ["user_id"], name: "index_comments_on_user_id"

  create_table "downvotes", force: :cascade do |t|
    t.integer  "profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "picture"
    t.text     "bio"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.boolean  "deactivate"
    t.boolean  "vendor"
    t.string   "company"
    t.string   "address"
    t.string   "phone"
    t.string   "license_type"
    t.string   "license_number"
  end

  add_index "profiles", ["user_id"], name: "index_profiles_on_user_id"

  create_table "projects", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "date"
    t.string   "url1"
    t.string   "url2"
    t.string   "url3"
    t.string   "url4"
    t.boolean  "kitchen"
    t.string   "sqft"
    t.integer  "number_of_cabinets"
    t.string   "countertop_style"
    t.integer  "counter_top_length"
    t.integer  "number_of_outlets"
    t.string   "light_fixture_type"
    t.integer  "floor_sqft"
    t.string   "floor_type"
    t.boolean  "bath"
    t.integer  "vanity_width"
    t.integer  "tub_length"
    t.integer  "shower_sqft"
    t.string   "mirror"
    t.string   "bath_fan"
    t.boolean  "air_conditioning"
    t.string   "ac_type"
    t.integer  "home_sqft"
    t.integer  "ac_size"
    t.string   "duct_work"
    t.boolean  "roof"
    t.boolean  "exterior_general"
    t.text     "more_detail"
    t.boolean  "paint"
    t.boolean  "floor"
    t.string   "floor_demo"
    t.string   "location_city"
    t.integer  "budget"
    t.string   "ends"
    t.boolean  "pool"
    t.boolean  "drive_way"
    t.integer  "length"
    t.integer  "width"
    t.boolean  "landscaping"
    t.boolean  "fence"
    t.string   "fence_material"
    t.boolean  "windows"
    t.string   "window_type"
    t.integer  "quantity"
    t.boolean  "electrical"
    t.boolean  "plumbing"
    t.boolean  "handy_man"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "user_id"
  end

  add_index "projects", ["user_id"], name: "index_projects_on_user_id"

  create_table "reviews", force: :cascade do |t|
    t.text     "reviews"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.integer  "project_id"
  end

  add_index "reviews", ["project_id"], name: "index_reviews_on_project_id"
  add_index "reviews", ["user_id"], name: "index_reviews_on_user_id"

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "provider"
    t.string   "uid"
    t.boolean  "vendor"
    t.string   "name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "votes", force: :cascade do |t|
    t.integer  "profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
