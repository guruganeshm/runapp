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

ActiveRecord::Schema.define(version: 20140330151421) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "arts", force: true do |t|
    t.string   "art_path"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bes", force: true do |t|
    t.string   "be_path"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bteches", force: true do |t|
    t.string   "btech_path"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "course_durations", force: true do |t|
    t.string   "twelth"
    t.string   "diploma"
    t.string   "iti"
    t.string   "hotel_mgmt"
    t.string   "multimedia"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "courses", force: true do |t|
    t.string   "name"
    t.string   "course_duration"
    t.string   "for_search_id"
    t.string   "higher_studies_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "designation_type_designations", force: true do |t|
    t.integer  "designation_type_id"
    t.integer  "designation_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "designation_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "designations", force: true do |t|
    t.string   "name"
    t.integer  "for_search_id"
    t.float    "course_duration"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "designation_type_id"
  end

  create_table "diploma_jobs", force: true do |t|
    t.string   "diploma_jobs"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "diplomas", force: true do |t|
    t.string   "diploma_path"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "for_searches", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hotel_mgmt_jobs", force: true do |t|
    t.string   "hotel_mgmt_jobs"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hotel_mgmts", force: true do |t|
    t.string   "hotel_mgmt_path"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "iti_jobs", force: true do |t|
    t.string   "iti_jobs"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "itis", force: true do |t|
    t.string   "iti_path"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jobs", force: true do |t|
    t.string   "name"
    t.string   "eligiblity_id"
    t.string   "course_come_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "medicals", force: true do |t|
    t.string   "medical_path"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mes", force: true do |t|
    t.string   "me_path"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mteches", force: true do |t|
    t.string   "mtech_path"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "multimedia", force: true do |t|
    t.string   "multimedia_path"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "multimedia_jobs", force: true do |t|
    t.string   "multimedia_jobs"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "phds", force: true do |t|
    t.string   "phd_path"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sciences", force: true do |t|
    t.string   "science_path"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tenth_jobs", force: true do |t|
    t.string   "tenth_jobs"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tenths", force: true do |t|
    t.string   "tenth_path"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "twelth_jobs", force: true do |t|
    t.string   "twelth_jobs"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "twelths", force: true do |t|
    t.string   "twelth_path"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "saalt"
    t.string   "password_hash"
    t.string   "imgurl"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "utils", force: true do |t|
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
  end

  add_index "utils", ["email"], name: "index_utils_on_email", unique: true, using: :btree
  add_index "utils", ["reset_password_token"], name: "index_utils_on_reset_password_token", unique: true, using: :btree

  create_table "views", force: true do |t|
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
  end

  add_index "views", ["email"], name: "index_views_on_email", unique: true, using: :btree
  add_index "views", ["reset_password_token"], name: "index_views_on_reset_password_token", unique: true, using: :btree

end
