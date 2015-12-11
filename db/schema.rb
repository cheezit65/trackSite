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

ActiveRecord::Schema.define(version: 20151126145124) do

  create_table "athletes", force: :cascade do |t|
    t.integer  "athleteNum"
    t.string   "lastName"
    t.string   "firstName"
    t.string   "birthYear"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "line_items", force: :cascade do |t|
    t.integer  "athlete_id"
    t.integer  "meet_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meet_names", force: :cascade do |t|
    t.integer  "meetNum"
    t.string   "meetName"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date     "meet_date"
  end

  create_table "meets", force: :cascade do |t|
    t.integer  "athleteNum"
    t.decimal  "event1"
    t.decimal  "event2"
    t.decimal  "event3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "meetNum"
  end

  create_table "results", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
