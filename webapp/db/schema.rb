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

ActiveRecord::Schema.define(version: 20141213040548) do

  create_table "admin1", primary_key: "key", force: true do |t|
    t.string  "name",      limit: 200, null: false
    t.string  "asciiname", limit: 200, null: false
    t.integer "geonameid",             null: false
  end

  add_index "admin1", ["key"], name: "sqlite_autoindex_admin1_1", unique: true

  create_table "changes", force: true do |t|
    t.string   "city_id"
    t.integer  "tip_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "changes", ["tip_id"], name: "index_changes_on_tip_id"

  create_table "countries", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "country", primary_key: "ISO", force: true do |t|
    t.text    "ISO3",               null: false
    t.text    "IsoNumeric",         null: false
    t.text    "fips",               null: false
    t.text    "Country",            null: false
    t.text    "Capital",            null: false
    t.integer "Area",               null: false
    t.integer "Population",         null: false
    t.text    "Continent",          null: false
    t.text    "tld",                null: false
    t.text    "CurrencyCode",       null: false
    t.text    "CurrencyName",       null: false
    t.text    "Phone",              null: false
    t.text    "PostalCodeFormat"
    t.text    "PostalCodeRegex"
    t.text    "Languages",          null: false
    t.integer "geonameid",          null: false
    t.text    "neighbours",         null: false
    t.text    "EquivalentFipsCode", null: false
  end

  add_index "country", ["ISO"], name: "sqlite_autoindex_country_1", unique: true

  create_table "flags", force: true do |t|
    t.string   "body"
    t.string   "flaggeable_type"
    t.integer  "tip_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "flags", ["tip_id"], name: "index_flags_on_tip_id"
  add_index "flags", ["user_id"], name: "index_flags_on_user_id"

  create_table "geoname", primary_key: "geonameid", force: true do |t|
    t.string  "name",           limit: 200
    t.string  "asciiname",      limit: 200
    t.string  "alternatenames", limit: 4000
    t.decimal "latitude",                    precision: 18, scale: 15
    t.decimal "longitude",                   precision: 18, scale: 15
    t.string  "fclass",         limit: 1
    t.string  "fcode",          limit: 10
    t.string  "country",        limit: 2
    t.string  "cc2",            limit: 60
    t.string  "admin1",         limit: 20
    t.string  "admin2",         limit: 80
    t.string  "admin3",         limit: 20
    t.string  "admin4",         limit: 20
    t.integer "population"
    t.integer "elevation"
    t.integer "gtopo30"
    t.string  "timezone",       limit: 40
    t.date    "moddate"
  end

  add_index "geoname", ["geonameid"], name: "sqlite_autoindex_geoname_1", unique: true

# Could not dump table "geoname_fulltext" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

  create_table "routes", force: true do |t|
    t.integer  "from"
    t.integer  "to"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tips", force: true do |t|
    t.string   "body"
    t.string   "duration"
    t.integer  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "route_id"
  end

  add_index "tips", ["route_id"], name: "index_tips_on_route_id"
  add_index "tips", ["user_id"], name: "index_tips_on_user_id"

  create_table "users", force: true do |t|
    t.string   "login"
    t.string   "name"
    t.string   "persistence_token"
    t.integer  "login_count"
    t.string   "email"
    t.datetime "last_login_at"
    t.datetime "current_login_at"
    t.string   "last_login_ip"
    t.string   "current_login_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "votes", force: true do |t|
    t.integer  "vote"
    t.integer  "user_id"
    t.integer  "tip_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "votes", ["tip_id"], name: "index_votes_on_tip_id"
  add_index "votes", ["user_id"], name: "index_votes_on_user_id"

end
