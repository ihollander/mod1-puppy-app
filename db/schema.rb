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

ActiveRecord::Schema.define(version: 2020_08_17_150125) do

  create_table "plants", force: :cascade do |t|
    t.string "size"
    t.string "genus"
    t.string "common_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "puppies", force: :cascade do |t|
    t.string "name"
    t.string "breed"
    t.integer "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "visits", force: :cascade do |t|
    t.integer "puppy_id"
    t.integer "plant_id"
    t.string "scent_notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
