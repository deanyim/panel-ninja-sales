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

ActiveRecord::Schema.define(version: 20160331195812) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "leads", force: :cascade do |t|
    t.string   "name"
    t.string   "role"
    t.string   "company"
    t.string   "company_type"
    t.datetime "ping_at"
    t.text     "notes"
    t.date     "first_contact"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "lead_id"
    t.integer  "lead_quality"
    t.integer  "lead_warmth"
    t.integer  "pipeline_step"
    t.boolean  "is_closed"
  end

  add_index "leads", ["lead_id"], name: "index_leads_on_lead_id", using: :btree

  create_table "prospects", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "company"
    t.integer  "their_interest"
    t.integer  "our_interest"
    t.text     "notes"
    t.boolean  "is_closed"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.datetime "ping_at"
  end

  add_foreign_key "leads", "leads"
end
