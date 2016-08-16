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

ActiveRecord::Schema.define(version: 20160816141458) do

  create_table "actions", force: :cascade do |t|
    t.text     "name"
    t.text     "config"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "actors", force: :cascade do |t|
    t.text     "name"
    t.text     "description"
    t.text     "defaultSettings"
    t.text     "settings"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "conditions", force: :cascade do |t|
    t.text     "operator"
    t.text     "operator_value"
    t.text     "sensor_value"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "rules", force: :cascade do |t|
    t.integer  "sensor_id"
    t.integer  "condition_id"
    t.integer  "action_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "rules", ["action_id"], name: "index_rules_on_action_id"
  add_index "rules", ["condition_id"], name: "index_rules_on_condition_id"
  add_index "rules", ["sensor_id"], name: "index_rules_on_sensor_id"

  create_table "sensors", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
