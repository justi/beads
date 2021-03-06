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

ActiveRecord::Schema.define(version: 20170929122723) do

  create_table "bead_color_packs", force: :cascade do |t|
    t.integer  "bead_color_id"
    t.integer  "bead_pack_id"
    t.float    "color_percentage"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "bead_color_packs", ["bead_color_id"], name: "index_bead_color_packs_on_bead_color_id"
  add_index "bead_color_packs", ["bead_pack_id"], name: "index_bead_color_packs_on_bead_pack_id"

  create_table "bead_colors", force: :cascade do |t|
    t.integer  "r"
    t.integer  "g"
    t.integer  "b"
    t.float    "h"
    t.float    "l"
    t.float    "s"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bead_packs", force: :cascade do |t|
    t.float    "count"
    t.integer  "bead_type_id"
    t.integer  "size_id"
    t.string   "name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "picture"
  end

  add_index "bead_packs", ["bead_type_id"], name: "index_bead_packs_on_bead_type_id"
  add_index "bead_packs", ["size_id"], name: "index_bead_packs_on_size_id"

  create_table "bead_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sizes", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
