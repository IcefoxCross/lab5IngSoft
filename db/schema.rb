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

ActiveRecord::Schema.define(version: 20151009115835) do

  create_table "monstruos", force: :cascade do |t|
    t.string   "nombre",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "descripcion",  limit: 255
    t.boolean  "critter_star",             default: false
  end

  create_table "tweets", force: :cascade do |t|
    t.text     "estado",      limit: 255
    t.integer  "monstruo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "victimas", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "edad"
    t.integer  "monstruo_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
