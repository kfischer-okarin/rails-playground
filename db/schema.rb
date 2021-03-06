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

ActiveRecord::Schema[7.0].define(version: 2022_05_31_053733) do
  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "street"
    t.string "postal_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "group_id"
    t.index ["group_id"], name: "index_users_on_group_id"
  end

  create_table "work_times", force: :cascade do |t|
    t.date "date"
    t.time "start_time"
    t.integer "duration"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["date", "user_id"], name: "index_work_times_on_date_and_user_id"
    t.index ["date"], name: "index_work_times_on_date"
    t.index ["user_id"], name: "index_work_times_on_user_id"
  end

  add_foreign_key "users", "groups"
  add_foreign_key "work_times", "users"
end
