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

ActiveRecord::Schema.define(version: 20150222091240) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: :cascade do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "adult_content_items", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.integer  "display_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "child_content_items", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.integer  "display_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "data_sync_statuses", force: :cascade do |t|
    t.integer  "version",    limit: 8, default: 1
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "display_interests", force: :cascade do |t|
    t.integer  "display_id"
    t.integer  "interest_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "display_interests", ["display_id"], name: "index_display_interests_on_display_id", using: :btree
  add_index "display_interests", ["interest_id"], name: "index_display_interests_on_interest_id", using: :btree

  create_table "displays", force: :cascade do |t|
    t.string   "name"
    t.text     "child_content"
    t.text     "adult_content"
    t.string   "beacon_uuid"
    t.integer  "beacon_major_num"
    t.integer  "beacon_minor_num"
    t.integer  "location_id"
    t.integer  "exhibit_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "displays", ["beacon_major_num"], name: "index_displays_on_beacon_major_num", using: :btree
  add_index "displays", ["beacon_minor_num"], name: "index_displays_on_beacon_minor_num", using: :btree
  add_index "displays", ["exhibit_id"], name: "index_displays_on_exhibit_id", using: :btree
  add_index "displays", ["location_id"], name: "index_displays_on_location_id", using: :btree

  create_table "exhibits", force: :cascade do |t|
    t.string   "name"
    t.integer  "location_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "exhibits", ["location_id"], name: "index_exhibits_on_location_id", using: :btree

  create_table "interests", force: :cascade do |t|
    t.string   "name"
    t.integer  "location_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "interests", ["location_id"], name: "index_interests_on_location_id", using: :btree

  create_table "locations", force: :cascade do |t|
    t.string   "name"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "city"
    t.string   "state"
    t.string   "zip_code"
    t.string   "street"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.string   "background_image_file_name"
    t.string   "background_image_content_type"
    t.integer  "background_image_file_size"
    t.datetime "background_image_updated_at"
  end

end
