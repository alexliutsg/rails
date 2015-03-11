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

ActiveRecord::Schema.define(version: 20150127030444) do

  create_table "admins", force: true do |t|
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
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "title"
    t.string   "organization"
    t.text     "qualification"
    t.string   "mobile"
    t.string   "program"
    t.string   "home_district"
    t.string   "work_district"
    t.string   "status"
    t.text     "note"
  end

  add_index "admins", ["confirmation_token"], name: "index_admins_on_confirmation_token", unique: true, using: :btree
  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

  create_table "course_enrollments", force: true do |t|
    t.integer  "course_id"
    t.integer  "participant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "courses", force: true do |t|
    t.integer  "school_id"
    t.string   "course_code"
    t.string   "acronym"
    t.string   "district"
    t.integer  "contact_person"
    t.integer  "pic"
    t.integer  "trainer_id"
    t.date     "first_lesson_date"
    t.date     "last_lesson_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "organizations", force: true do |t|
    t.integer  "region_id"
    t.string   "organization_type"
    t.string   "primary_name"
    t.text     "alternative_names"
    t.text     "address"
    t.string   "contact_numbers"
    t.string   "email"
    t.string   "fax_numbers"
    t.string   "website"
    t.string   "contact_persons"
    t.text     "remarks"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "participants", force: true do |t|
    t.integer  "school_id"
    t.string   "name"
    t.string   "email"
    t.string   "mobile"
    t.string   "gender"
    t.integer  "age"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "program_cycles", force: true do |t|
    t.string   "name"
    t.date     "start_date"
    t.date     "end_date"
    t.text     "goal"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "progresses", force: true do |t|
    t.integer  "program_cycle_id"
    t.integer  "organization_id"
    t.string   "pitching_status"
    t.text     "pitching_remarks"
    t.string   "program_status"
    t.text     "program_remarks"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questionnaires", force: true do |t|
    t.string   "type"
    t.integer  "course_enrollment_id"
    t.string   "qns_1"
    t.string   "qns_2"
    t.string   "qns_3"
    t.string   "qns_4"
    t.string   "qns_5"
    t.string   "qns_6"
    t.string   "qns_7"
    t.string   "qns_8"
    t.text     "qns_9"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "regions", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "school_representatives", force: true do |t|
    t.integer  "school_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "school_time_slots", force: true do |t|
    t.integer  "school_id"
    t.date     "date"
    t.string   "start_time"
    t.string   "end_time"
    t.string   "status"
    t.text     "remarks"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trainer_time_slots", force: true do |t|
    t.integer  "trainer_id"
    t.date     "date"
    t.string   "start_time"
    t.string   "end_time"
    t.string   "status"
    t.text     "remarks"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trainers", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "title"
    t.decimal  "payment_rate",     precision: 10, scale: 0
    t.string   "club_represented"
    t.text     "qualification"
    t.string   "email"
    t.string   "mobile"
    t.string   "home_district"
    t.string   "work_district"
    t.string   "status"
    t.text     "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
