# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_10_02_002115) do

  create_table "comments", force: :cascade do |t|
    t.string "content"
    t.integer "user_id"
    t.integer "job_id"
    t.integer "paints_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["job_id"], name: "index_comments_on_job_id"
    t.index ["paints_id"], name: "index_comments_on_paints_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.string "customer_name"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string "room"
    t.string "type_of_wood"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_jobs_on_user_id"
  end

  create_table "paints", force: :cascade do |t|
    t.integer "job_id", null: false
    t.string "brand_name"
    t.string "type"
    t.string "dry_time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["job_id"], name: "index_paints_on_job_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "comments", "jobs"
  add_foreign_key "comments", "paints", column: "paints_id"
  add_foreign_key "comments", "users"
  add_foreign_key "jobs", "users"
  add_foreign_key "paints", "jobs"
end
