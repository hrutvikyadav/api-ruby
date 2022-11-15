# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_11_11_220349) do
  create_table "data", force: :cascade do |t|
    t.integer "data_point"
    t.float "test_time_s"
    t.float "step_time_s"
    t.integer "cycle_index"
    t.integer "step_index"
    t.float "current_a"
    t.float "voltage_v"
    t.float "power_w"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "test_id", null: false
    t.index ["test_id"], name: "index_data_on_test_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "item_name"
    t.string "description"
    t.integer "value"
    t.boolean "mandatory"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schedule_files", force: :cascade do |t|
    t.integer "test_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "schedule_name"
    t.index ["test_id"], name: "index_schedule_files_on_test_id"
  end

  create_table "test_objects", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "test_object_name"
  end

  create_table "tests", force: :cascade do |t|
    t.string "test_name"
    t.integer "channel"
    t.string "bar_code"
    t.string "creator"
    t.string "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "data", "tests"
  add_foreign_key "schedule_files", "tests"
end
