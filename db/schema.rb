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

ActiveRecord::Schema.define(version: 20170109020256) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "final_tests", force: :cascade do |t|
    t.string   "this"
    t.string   "that"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "post_templates", force: :cascade do |t|
    t.string   "new_thing"
    t.string   "other_thing"
    t.text     "another_thing"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "showtimes", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "test_templates", force: :cascade do |t|
    t.string   "first"
    t.string   "last"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
