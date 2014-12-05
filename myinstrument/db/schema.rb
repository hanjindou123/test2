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

ActiveRecord::Schema.define(version: 20141111085147) do

  create_table "availables", force: true do |t|
    t.integer  "instrument_id"
    t.string   "available_datetime"
    t.boolean  "available_slot0"
    t.boolean  "available_slot1"
    t.boolean  "available_slot2"
    t.boolean  "available_slot3"
    t.boolean  "available_slot4"
    t.boolean  "available_slot5"
    t.boolean  "available_slot6"
    t.boolean  "available_slot7"
    t.boolean  "available_slot8"
    t.boolean  "available_slot9"
    t.boolean  "available_slot10"
    t.boolean  "available_slot11"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "instruments", force: true do |t|
    t.string   "instrument_sn"
    t.string   "instrument_name"
    t.string   "instrument_class"
    t.string   "instrument_address"
    t.text     "instrument_brief"
    t.text     "instrument_detail"
    t.string   "instrument_state"
    t.decimal  "instrument_cost_per_hour"
    t.string   "instrument_assistant"
    t.string   "instrument_assessor"
    t.string   "instrument_administrator"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "subscribes", force: true do |t|
    t.string   "subscribe_instrument_sn"
    t.string   "subscribe_user_name"
    t.string   "subscribe_submit_datetime"
    t.boolean  "subscribe_use_slot0"
    t.boolean  "subscribe_use_slot1"
    t.boolean  "subscribe_use_slot2"
    t.boolean  "subscribe_use_slot3"
    t.boolean  "subscribe_use_slot4"
    t.boolean  "subscribe_use_slot5"
    t.boolean  "subscribe_use_slot6"
    t.boolean  "subscribe_use_slot7"
    t.boolean  "subscribe_use_slot8"
    t.boolean  "subscribe_use_slot9"
    t.boolean  "subscribe_use_slot10"
    t.boolean  "subscribe_use_slot11"
    t.decimal  "subscribe_cost"
    t.string   "subscribe_state"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "user_loginname"
    t.string   "user_password"
    t.string   "user_relatecount"
    t.string   "user_email"
    t.string   "user_realname"
    t.text     "user_address"
    t.string   "user_phonenumber"
    t.boolean  "user_payable"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
