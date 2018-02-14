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

ActiveRecord::Schema.define(version: 0) do

  create_table "descriptions", force: :cascade do |t|
    t.integer "flex_good_tf"
    t.text "flex_good"
    t.integer "flex_bad_tf"
    t.text "flex_bad"
    t.integer "work_from_home_tf"
    t.text "work_from_home"
    t.text "benefits_string"
    t.integer "txt_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["txt_id"], name: "index_descriptions_on_txt_id"
  end

  create_table "txts", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "tid"
    t.integer "bgtjobid", limit: 8
    t.text "jobid"
    t.text "jobtext"
  end

end
