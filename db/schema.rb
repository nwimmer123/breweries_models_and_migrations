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

ActiveRecord::Schema.define(version: 20160112052735) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "beers", force: :cascade do |t|
    t.string   "name"
    t.decimal  "abv"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "brewery_name"
    t.string   "short_description"
    t.string   "long_description"
    t.string   "style"
    t.integer  "brewer_id"
  end

  add_index "beers", ["brewer_id"], name: "index_beers_on_brewer_id", using: :btree

  create_table "brewers", force: :cascade do |t|
    t.string   "name"
    t.string   "city"
    t.string   "state"
    t.string   "website_url"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "founding_date"
  end

  add_foreign_key "beers", "brewers"
end
